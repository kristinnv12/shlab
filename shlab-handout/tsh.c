/*
 * tsh - A tiny shell program with job control
 *
 * You __MUST__ add your user information here below
 *
 * === User information ===
 * Group: Six
 * User 1: kristinnv12
 * SSN: 0208923829
 * User 2: ragnarp12
 * SSN: 2801872169
 * === End User Information ===
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/*
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

//TODO: add rest of built in commands

struct job_t                /* The job struct */
{
	pid_t pid;              /* job PID */
	int jid;                /* job ID [1, 2, ...] */
	int state;              /* UNDEF, BG, FG, or ST */
	char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */
/* End global variables */


/* Function prototypes */

/* Here are the functions that you will implement */
void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, char **argv);
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *jobs);
int maxjid(struct job_t *jobs);
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *jobs, pid_t pid);
pid_t fgpid(struct job_t *jobs);
struct job_t *getjobpid(struct job_t *jobs, pid_t pid);
struct job_t *getjobjid(struct job_t *jobs, int jid);
int pid2jid(pid_t pid);
void listjobs(struct job_t *jobs);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine
 */
int main(int argc, char **argv)
{
	char c;
	char cmdline[MAXLINE];
	int emit_prompt = 1; /* emit prompt (default) */

	/* Redirect stderr to stdout (so that driver will get all output
	 * on the pipe connected to stdout) */
	dup2(1, 2);

	/* Parse the command line */
	while ((c = getopt(argc, argv, "hvp")) != EOF)
	{
		switch (c)
		{
			case 'h':             /* print help message */
				usage();
				break;
			case 'v':             /* emit additional diagnostic info */
				verbose = 1;
				break;
			case 'p':             /* don't print a prompt */
				emit_prompt = 0;  /* handy for automatic testing */
				break;
			default:
				usage();
		}
	}

	/* Install the signal handlers */

	/* These are the ones you will need to implement */
	Signal(SIGINT,  sigint_handler);   /* ctrl-c */
	Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
	Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */

	/* This one provides a clean way to kill the shell */
	Signal(SIGQUIT, sigquit_handler);

	/* Initialize the job list */
	initjobs(jobs);

	/* Execute the shell's read/eval loop */
	while (1)
	{

		/* Read command line */
		if (emit_prompt)
		{
			printf("%s", prompt);
			fflush(stdout);
		}
		if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
		{
			app_error("fgets error");
		}
		if (feof(stdin))   /* End of file (ctrl-d) */
		{
			fflush(stdout);
			exit(0);
		}

		/* Evaluate the command line */
		eval(cmdline);
		fflush(stdout);
		fflush(stdout);
	}

	exit(0); /* control never reaches here */
}

/*
 * eval - Evaluate the command line that the user has just typed in
 *
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.
 */
void eval(char *cmdline)
{

	int bg; // Save the return value from parseline()
	char *argv[MAXARGS]; // argument list
	pid_t pid; // Keep the pid when we fork
	sigset_t mask;


	// Parseline returns if we have bg(1) or fg(0)
	bg = parseline(cmdline, argv);


	// Some basecase, empty argument line
	if (argv[0] == NULL)
	{
		return;
	}

	// This if statement will run if our argument is not
	// a build-in command, like quit, jobs, fg and bg
	if (!builtin_cmd(argv))
	{
		// Now to prevent the sigchld handler to deletejob
		// before addjob we block it using sigprocmask.
		sigemptyset(&mask); // Initialize a empty set
		sigaddset(&mask, SIGCHLD); // Add SIGCHLD to the set

		// We add SIGCHILD to our blocking list. By this we can
		// be sure our job won't be deleted from the job list
		// until it has ended, causing possible error.
		sigprocmask(SIG_BLOCK, &mask, NULL);


		pid = fork();

		// fork() gives -1 if error occur
		if (pid < 0)
		{
			printf("Error forking child process\n");
			exit(0);
		}
		// Now here we have forked our process to run the program.
		else if (pid == 0)
		{
			// http://www.gnu.org/software/libc/manual/html_node/Launching-Jobs.html
			// Change process group to its own process group
			setpgid(0, 0);

			// We can now allow the job to be deleted from the list
			// so we deleted SIGCHLD from the set.
			sigprocmask(SIG_UNBLOCK, &mask, NULL);

			// Now we execute a new program. Execve returns -1 if error otherwise
			// no return.
			if (execve(argv[0], argv, environ) < 0)
			{
				// Our command doesn't exist, display it
				printf("%s: Command not found\n", argv[0]);

				// We close shell process since our forked process
				// isn't the right command
				exit(0);
			}

		}

		if (bg)
		{
			// Add the process to a job list.
			if (addjob(jobs, pid, BG, cmdline))
			{
				sigprocmask(SIG_UNBLOCK, &mask, NULL);
				printf("[%d] %d %s", pid2jid(pid), pid, cmdline);
				fflush(stdout);
			}
			//printf("We run in background\n");
		}
		else
		{

			if (addjob(jobs, pid, FG, cmdline))
			{
				sigprocmask(SIG_UNBLOCK, &mask, NULL);
				waitfg(pid);
			}
		}
	}

	return;
}

/*
 * parseline - Parse the command line and build the argv array.
 *
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return true if the user has requested a BG job, false if
 * the user has requested a FG job.
 */
int parseline(const char *cmdline, char **argv)
{
	static char array[MAXLINE]; /* holds local copy of command line */
	char *buf = array;          /* ptr that traverses command line */
	char *delim;                /* points to first space delimiter */
	int argc;                   /* number of args */
	int bg;                     /* background job? */

	strcpy(buf, cmdline);
	buf[strlen(buf) - 1] = ' '; /* replace trailing '\n' with space */
	while (*buf && (*buf == ' '))   /* ignore leading spaces */
	{
		buf++;
	}

	/* Build the argv list */
	argc = 0;
	if (*buf == '\'')
	{
		buf++;
		delim = strchr(buf, '\'');
	}
	else
	{
		delim = strchr(buf, ' ');
	}

	while (delim)
	{
		argv[argc++] = buf;
		*delim = '\0';
		buf = delim + 1;
		while (*buf && (*buf == ' '))   /* ignore spaces */
		{
			buf++;
		}

		if (*buf == '\'')
		{
			buf++;
			delim = strchr(buf, '\'');
		}
		else
		{
			delim = strchr(buf, ' ');
		}
	}
	argv[argc] = NULL;

	if (argc == 0)   /* ignore blank line */
	{
		return 1;
	}

	/* should the job run in the background? */
	if ((bg = (*argv[argc - 1] == '&')) != 0)
	{
		argv[--argc] = NULL;
	}
	return bg;
}

/*
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.
 */
int builtin_cmd(char **argv)
{
	// Quit needes to check if we have some jobs in the background
	if (!strcmp(argv[0], "quit"))       //check for built in cmd quit
	{
		//kill(jobs.pid, SIGKILL);
		exit(0);
	}
	else if (!strcmp(argv[0], "jobs"))  // lists all background jobs
	{
		listjobs(jobs);

		return 1;
	}
	else if (!strcmp(argv[0], "fg") || !strcmp(argv[0], "bg") )
	{
		do_bgfg(argv);
		return 1;
	}

	return 0;     /* not a builtin command */
}

/*
 * do_bgfg - Execute the builtin bg and fg commands
 */
void do_bgfg(char **argv)
{

	// * Athuga fyrst hvort um fg eða bg er að ræða
	// * Athuga hvort þetta sé jid eða pid. JID er með % á undan tölunni
	// *
	//
	//int pid;
	int jid, pid;

	char *endptr;
	struct job_t *job;

	// Lets do nothing if argument after fg/bg is none
	if (argv[1] == NULL)
	{
		return;
	}

	// Check if user entered pid
	if (argv[1][0] != '%')
	{
		pid = strtol(argv[1], &endptr, 10);
		jid = pid2jid(pid);

		if (jid == 0)
		{
			printf("(%d): No such process\n", pid);
			return;
		}

	}
	// otherwise the user has entered jid
	else
	{
		// %333: No such job
		// // fg: argument must be a PID or %jobid
		// We add ++argv[1] to go right after %
		jid = strtol(++argv[1], &endptr, 10);
		job = getjobjid(jobs, jid);

	}

	if ((job = getjobjid(jobs, jid)) == NULL)
	{
		printf("%%%d: No such job\n", jid);
		return;
	}
	// Save state here so we do the forbidden DRY
	int state = job->state;

	if (state == ST || state == BG)
	{
		if (!strcmp(argv[0], "fg"))
		{
			job->state = FG;
			waitfg(job->pid);
		}
		else
		{
			job->state = BG;
			printf("[%d] (%d) %s\n", job->jid, job->pid, job->cmdline);
		}
		kill(-(job->pid), SIGCONT);
	}

	/*if (!strcmp(argv[0], "fg"))
	{
	    // No the user has types fg and we put FG to the state of
	    // the job. This must be done if the process is in background
	    // or is stopped

	    if(state == ST || state == BG)
	    {

	        job->state = FG;
	        // printf("Starting again\n");
	        kill(-(job->pid), SIGCONT);

	        // Got to waitfg where we put our process back to the shell front
	        waitfg(job->pid);
	    }
	}
	*/
	return;
}

/*
 * waitfg - Block until process pid is no longer the foreground process
 */
void waitfg(pid_t pid)
{
	//int status;
	// Here we wait for our foreground program to return
	// while ((pid = waitpid(-1, &status, 0)) > 0 )
	struct job_t *job;
	job = getjobpid(jobs, pid);
	while (job->state == FG)
	{
		//deletejob(struct job_t *jobs, pid_t pid)
		//deletejob(jobs, pid);
		sleep(1);
		//printf("Our child is free\n");
	}
	return;
}

/*****************
 * Signal handlers
 *****************/

/*
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.
 */
void sigchld_handler(int sig)
{
	pid_t pid;
	int status;
	struct job_t *jobid;
	/* bls 725 og bls 727-728
	. WIFEXITED(status): Returns true if the child terminated normally, via a
	    call to exit or a return. <- Láta athuga

	. WEXITSTATUS(status): Returns the exit status of a normally terminated
	    child. This status is only deﬁned if WIFEXITED returned true. <- ekki nauðsynlegt

	. WIFSIGNALED(status): Returns true if the child process terminated be-
	    cause of a signal that was not caught. (Signals are explained in Section 8.5.) <- spurning með að Láta athuga

	. WTERMSIG(status):Returns the number of the signal that caused the child
	    process to terminate. This status is only deﬁned ifWIFSIGNALED(status)
	    returned true. <- ekki athuga

	. WIFSTOPPED(status): Returns true if the child that caused the return is
	    currently stopped. <- Láta athuga

	. WSTOPSIG(status): Returns the number of the signal that caused the child
	    to stop. This status is only deﬁned if WIFSTOPPED(status) returned true. <- ekki athuga
	 */


	while ((pid = waitpid(-1, &status, WUNTRACED | WNOHANG)) > 0)
	{
		jobid = getjobpid(jobs, pid);

		if (WIFSIGNALED(status))
		{
			printf("Got WIFSIGNALED\n");
			fflush(stdout);
			deletejob(jobs, pid);
		}
		else if (WIFSTOPPED(status))
		{
			jobid->state = ST;
			printf("Job [%d] (%d) stopped by signal %d\n", jobid->jid, pid, WSTOPSIG(status));
			kill(-pid, SIGTSTP);
			fflush(stdout);
		}
		// Just a normal exit so we just delete the job
		else
		{
			printf("Got else\n");
			fflush(stdout);
			deletejob(jobs, pid);
		}
	}

	return;
}

/*
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.
 */
void sigint_handler(int sig)
{
	int pid;
	int jobid;

	pid = fgpid(jobs);      // Get foreground pid
	jobid = pid2jid(pid);   // Get job id based on pid

	// fgpid() returns 0 if we have no foreground job
	// so this won't run if we get 0.
	if (pid != 0)
	{
		// Kill pid and its group process using SIGINT.
		// kill() returns 0 if it successes
		if (kill(-pid, SIGINT) == 0)
		{
			printf("Job [%d] (%d) terminated by signal %d\n", jobid, pid, SIGINT);
		}
	}

	return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.
 */
void sigtstp_handler(int sig)
{

	int pid;
	int jobid;

	pid = fgpid(jobs);      // Get foreground pid
	jobid = pid2jid(pid);   // Get job id based on pid

	if (pid != 0)
	{
		if (kill(-pid, SIGTSTP))
		{
			printf("Job [%d] (%d) stopped by signal %d", jobid, pid, SIGTSTP);
		}
	}


	return;
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job)
{
	job->pid = 0;
	job->jid = 0;
	job->state = UNDEF;
	job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *jobs)
{
	int i;

	for (i = 0; i < MAXJOBS; i++)
	{
		clearjob(&jobs[i]);
	}
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *jobs)
{
	int i, max = 0;

	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].jid > max)
		{
			max = jobs[i].jid;
		}
	}
	return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline)
{
	int i;

	if (pid < 1)
	{
		return 0;
	}

	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].pid == 0)
		{
			jobs[i].pid = pid;
			jobs[i].state = state;
			jobs[i].jid = nextjid++;
			if (nextjid > MAXJOBS)
			{
				nextjid = 1;
			}
			strcpy(jobs[i].cmdline, cmdline);
			if (verbose)
			{
				printf("Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
			}
			return 1;
		}
	}
	printf("Tried to create too many jobs\n");
	return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *jobs, pid_t pid)
{
	int i;

	if (pid < 1)
	{
		return 0;
	}

	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].pid == pid)
		{
			clearjob(&jobs[i]);
			nextjid = maxjid(jobs) + 1;
			return 1;
		}
	}
	return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs)
{
	int i;

	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].state == FG)
		{
			return jobs[i].pid;
		}
	}
	return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *jobs, pid_t pid)
{
	int i;

	if (pid < 1)
	{
		return NULL;
	}
	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].pid == pid)
		{
			return &jobs[i];
		}
	}
	return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *jobs, int jid)
{
	int i;

	if (jid < 1)
	{
		return NULL;
	}
	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].jid == jid)
		{
			return &jobs[i];
		}
	}
	return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid)
{
	int i;

	if (pid < 1)
	{
		return 0;
	}
	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].pid == pid)
		{
			return jobs[i].jid;
		}
	}
	return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t *jobs)
{
	int i;

	for (i = 0; i < MAXJOBS; i++)
	{
		if (jobs[i].pid != 0)
		{
			printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
			switch (jobs[i].state)
			{
				case BG:
					printf("Running ");
					break;
				case FG:
					printf("Foreground ");
					break;
				case ST:
					printf("Stopped ");
					break;
				default:
					printf("listjobs: Internal error: job[%d].state=%d ",
					       i, jobs[i].state);
			}
			printf("%s", jobs[i].cmdline);
		}
	}
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void)
{
	printf("Usage: shell [-hvp]\n");
	printf("   -h   print this message\n");
	printf("   -v   print additional diagnostic information\n");
	printf("   -p   do not emit a command prompt\n");
	exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void unix_error(char *msg)
{
	fprintf(stdout, "%s: %s\n", msg, strerror(errno));
	exit(1);
}

/*
 * app_error - application-style error routine
 */
void app_error(char *msg)
{
	fprintf(stdout, "%s\n", msg);
	exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t *Signal(int signum, handler_t *handler)
{
	struct sigaction action, old_action;

	action.sa_handler = handler;
	sigemptyset(&action.sa_mask); /* block sigs of type being handled */
	action.sa_flags = SA_RESTART; /* restart syscalls if possible */

	if (sigaction(signum, &action, &old_action) < 0)
	{
		unix_error("Signal error");
	}
	return (old_action.sa_handler);
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig)
{
	printf("Terminating after receipt of SIGQUIT signal\n");
	exit(1);
}
