
./tshref:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a48 <_init>:
  400a48:	48 83 ec 08          	sub    $0x8,%rsp
  400a4c:	e8 fb 01 00 00       	callq  400c4c <call_gmon_start>
  400a51:	e8 8a 02 00 00       	callq  400ce0 <frame_dummy>
  400a56:	e8 35 15 00 00       	callq  401f90 <__do_global_ctors_aux>
  400a5b:	48 83 c4 08          	add    $0x8,%rsp
  400a5f:	c3                   	retq   

Disassembly of section .plt:

0000000000400a60 <dup2@plt-0x10>:
  400a60:	ff 35 62 27 20 00    	pushq  0x202762(%rip)        # 6031c8 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a66:	ff 25 64 27 20 00    	jmpq   *0x202764(%rip)        # 6031d0 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a70 <dup2@plt>:
  400a70:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 6031d8 <_GLOBAL_OFFSET_TABLE_+0x18>
  400a76:	68 00 00 00 00       	pushq  $0x0
  400a7b:	e9 e0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400a80 <printf@plt>:
  400a80:	ff 25 5a 27 20 00    	jmpq   *0x20275a(%rip)        # 6031e0 <_GLOBAL_OFFSET_TABLE_+0x20>
  400a86:	68 01 00 00 00       	pushq  $0x1
  400a8b:	e9 d0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400a90 <puts@plt>:
  400a90:	ff 25 52 27 20 00    	jmpq   *0x202752(%rip)        # 6031e8 <_GLOBAL_OFFSET_TABLE_+0x28>
  400a96:	68 02 00 00 00       	pushq  $0x2
  400a9b:	e9 c0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400aa0 <exit@plt>:
  400aa0:	ff 25 4a 27 20 00    	jmpq   *0x20274a(%rip)        # 6031f0 <_GLOBAL_OFFSET_TABLE_+0x30>
  400aa6:	68 03 00 00 00       	pushq  $0x3
  400aab:	e9 b0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ab0 <getopt@plt>:
  400ab0:	ff 25 42 27 20 00    	jmpq   *0x202742(%rip)        # 6031f8 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ab6:	68 04 00 00 00       	pushq  $0x4
  400abb:	e9 a0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ac0 <__libc_start_main@plt>:
  400ac0:	ff 25 3a 27 20 00    	jmpq   *0x20273a(%rip)        # 603200 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ac6:	68 05 00 00 00       	pushq  $0x5
  400acb:	e9 90 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ad0 <setpgid@plt>:
  400ad0:	ff 25 32 27 20 00    	jmpq   *0x202732(%rip)        # 603208 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ad6:	68 06 00 00 00       	pushq  $0x6
  400adb:	e9 80 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ae0 <fgets@plt>:
  400ae0:	ff 25 2a 27 20 00    	jmpq   *0x20272a(%rip)        # 603210 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ae6:	68 07 00 00 00       	pushq  $0x7
  400aeb:	e9 70 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400af0 <ferror@plt>:
  400af0:	ff 25 22 27 20 00    	jmpq   *0x202722(%rip)        # 603218 <_GLOBAL_OFFSET_TABLE_+0x58>
  400af6:	68 08 00 00 00       	pushq  $0x8
  400afb:	e9 60 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b00 <__ctype_b_loc@plt>:
  400b00:	ff 25 1a 27 20 00    	jmpq   *0x20271a(%rip)        # 603220 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b06:	68 09 00 00 00       	pushq  $0x9
  400b0b:	e9 50 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b10 <sleep@plt>:
  400b10:	ff 25 12 27 20 00    	jmpq   *0x202712(%rip)        # 603228 <_GLOBAL_OFFSET_TABLE_+0x68>
  400b16:	68 0a 00 00 00       	pushq  $0xa
  400b1b:	e9 40 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b20 <kill@plt>:
  400b20:	ff 25 0a 27 20 00    	jmpq   *0x20270a(%rip)        # 603230 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b26:	68 0b 00 00 00       	pushq  $0xb
  400b2b:	e9 30 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b30 <strerror@plt>:
  400b30:	ff 25 02 27 20 00    	jmpq   *0x202702(%rip)        # 603238 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b36:	68 0c 00 00 00       	pushq  $0xc
  400b3b:	e9 20 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b40 <sigprocmask@plt>:
  400b40:	ff 25 fa 26 20 00    	jmpq   *0x2026fa(%rip)        # 603240 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b46:	68 0d 00 00 00       	pushq  $0xd
  400b4b:	e9 10 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b50 <sigaction@plt>:
  400b50:	ff 25 f2 26 20 00    	jmpq   *0x2026f2(%rip)        # 603248 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b56:	68 0e 00 00 00       	pushq  $0xe
  400b5b:	e9 00 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b60 <strtol@plt>:
  400b60:	ff 25 ea 26 20 00    	jmpq   *0x2026ea(%rip)        # 603250 <_GLOBAL_OFFSET_TABLE_+0x90>
  400b66:	68 0f 00 00 00       	pushq  $0xf
  400b6b:	e9 f0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b70 <execve@plt>:
  400b70:	ff 25 e2 26 20 00    	jmpq   *0x2026e2(%rip)        # 603258 <_GLOBAL_OFFSET_TABLE_+0x98>
  400b76:	68 10 00 00 00       	pushq  $0x10
  400b7b:	e9 e0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b80 <strchr@plt>:
  400b80:	ff 25 da 26 20 00    	jmpq   *0x2026da(%rip)        # 603260 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400b86:	68 11 00 00 00       	pushq  $0x11
  400b8b:	e9 d0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b90 <waitpid@plt>:
  400b90:	ff 25 d2 26 20 00    	jmpq   *0x2026d2(%rip)        # 603268 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400b96:	68 12 00 00 00       	pushq  $0x12
  400b9b:	e9 c0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ba0 <__errno_location@plt>:
  400ba0:	ff 25 ca 26 20 00    	jmpq   *0x2026ca(%rip)        # 603270 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400ba6:	68 13 00 00 00       	pushq  $0x13
  400bab:	e9 b0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bb0 <sigaddset@plt>:
  400bb0:	ff 25 c2 26 20 00    	jmpq   *0x2026c2(%rip)        # 603278 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400bb6:	68 14 00 00 00       	pushq  $0x14
  400bbb:	e9 a0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bc0 <strcpy@plt>:
  400bc0:	ff 25 ba 26 20 00    	jmpq   *0x2026ba(%rip)        # 603280 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400bc6:	68 15 00 00 00       	pushq  $0x15
  400bcb:	e9 90 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bd0 <feof@plt>:
  400bd0:	ff 25 b2 26 20 00    	jmpq   *0x2026b2(%rip)        # 603288 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400bd6:	68 16 00 00 00       	pushq  $0x16
  400bdb:	e9 80 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400be0 <fork@plt>:
  400be0:	ff 25 aa 26 20 00    	jmpq   *0x2026aa(%rip)        # 603290 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400be6:	68 17 00 00 00       	pushq  $0x17
  400beb:	e9 70 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bf0 <sigemptyset@plt>:
  400bf0:	ff 25 a2 26 20 00    	jmpq   *0x2026a2(%rip)        # 603298 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400bf6:	68 18 00 00 00       	pushq  $0x18
  400bfb:	e9 60 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400c00 <fprintf@plt>:
  400c00:	ff 25 9a 26 20 00    	jmpq   *0x20269a(%rip)        # 6032a0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400c06:	68 19 00 00 00       	pushq  $0x19
  400c0b:	e9 50 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400c10 <fflush@plt>:
  400c10:	ff 25 92 26 20 00    	jmpq   *0x202692(%rip)        # 6032a8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400c16:	68 1a 00 00 00       	pushq  $0x1a
  400c1b:	e9 40 fe ff ff       	jmpq   400a60 <_init+0x18>

Disassembly of section .text:

0000000000400c20 <_start>:
  400c20:	31 ed                	xor    %ebp,%ebp
  400c22:	49 89 d1             	mov    %rdx,%r9
  400c25:	5e                   	pop    %rsi
  400c26:	48 89 e2             	mov    %rsp,%rdx
  400c29:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400c2d:	50                   	push   %rax
  400c2e:	54                   	push   %rsp
  400c2f:	49 c7 c0 f0 1e 40 00 	mov    $0x401ef0,%r8
  400c36:	48 c7 c1 00 1f 40 00 	mov    $0x401f00,%rcx
  400c3d:	48 c7 c7 50 1d 40 00 	mov    $0x401d50,%rdi
  400c44:	e8 77 fe ff ff       	callq  400ac0 <__libc_start_main@plt>
  400c49:	f4                   	hlt    
  400c4a:	90                   	nop
  400c4b:	90                   	nop

0000000000400c4c <call_gmon_start>:
  400c4c:	48 83 ec 08          	sub    $0x8,%rsp
  400c50:	48 8b 05 61 25 20 00 	mov    0x202561(%rip),%rax        # 6031b8 <_DYNAMIC+0x190>
  400c57:	48 85 c0             	test   %rax,%rax
  400c5a:	74 02                	je     400c5e <call_gmon_start+0x12>
  400c5c:	ff d0                	callq  *%rax
  400c5e:	48 83 c4 08          	add    $0x8,%rsp
  400c62:	c3                   	retq   
  400c63:	90                   	nop
  400c64:	90                   	nop
  400c65:	90                   	nop
  400c66:	90                   	nop
  400c67:	90                   	nop
  400c68:	90                   	nop
  400c69:	90                   	nop
  400c6a:	90                   	nop
  400c6b:	90                   	nop
  400c6c:	90                   	nop
  400c6d:	90                   	nop
  400c6e:	90                   	nop
  400c6f:	90                   	nop

0000000000400c70 <__do_global_dtors_aux>:
  400c70:	55                   	push   %rbp
  400c71:	48 89 e5             	mov    %rsp,%rbp
  400c74:	53                   	push   %rbx
  400c75:	48 83 ec 08          	sub    $0x8,%rsp
  400c79:	80 3d 58 26 20 00 00 	cmpb   $0x0,0x202658(%rip)        # 6032d8 <completed.6347>
  400c80:	75 4b                	jne    400ccd <__do_global_dtors_aux+0x5d>
  400c82:	bb 18 30 60 00       	mov    $0x603018,%ebx
  400c87:	48 8b 05 52 26 20 00 	mov    0x202652(%rip),%rax        # 6032e0 <dtor_idx.6349>
  400c8e:	48 81 eb 10 30 60 00 	sub    $0x603010,%rbx
  400c95:	48 c1 fb 03          	sar    $0x3,%rbx
  400c99:	48 83 eb 01          	sub    $0x1,%rbx
  400c9d:	48 39 d8             	cmp    %rbx,%rax
  400ca0:	73 24                	jae    400cc6 <__do_global_dtors_aux+0x56>
  400ca2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400ca8:	48 83 c0 01          	add    $0x1,%rax
  400cac:	48 89 05 2d 26 20 00 	mov    %rax,0x20262d(%rip)        # 6032e0 <dtor_idx.6349>
  400cb3:	ff 14 c5 10 30 60 00 	callq  *0x603010(,%rax,8)
  400cba:	48 8b 05 1f 26 20 00 	mov    0x20261f(%rip),%rax        # 6032e0 <dtor_idx.6349>
  400cc1:	48 39 d8             	cmp    %rbx,%rax
  400cc4:	72 e2                	jb     400ca8 <__do_global_dtors_aux+0x38>
  400cc6:	c6 05 0b 26 20 00 01 	movb   $0x1,0x20260b(%rip)        # 6032d8 <completed.6347>
  400ccd:	48 83 c4 08          	add    $0x8,%rsp
  400cd1:	5b                   	pop    %rbx
  400cd2:	c9                   	leaveq 
  400cd3:	c3                   	retq   
  400cd4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400cdb:	00 00 00 00 00 

0000000000400ce0 <frame_dummy>:
  400ce0:	48 83 3d 38 23 20 00 	cmpq   $0x0,0x202338(%rip)        # 603020 <__JCR_END__>
  400ce7:	00 
  400ce8:	55                   	push   %rbp
  400ce9:	48 89 e5             	mov    %rsp,%rbp
  400cec:	74 12                	je     400d00 <frame_dummy+0x20>
  400cee:	b8 00 00 00 00       	mov    $0x0,%eax
  400cf3:	48 85 c0             	test   %rax,%rax
  400cf6:	74 08                	je     400d00 <frame_dummy+0x20>
  400cf8:	bf 20 30 60 00       	mov    $0x603020,%edi
  400cfd:	c9                   	leaveq 
  400cfe:	ff e0                	jmpq   *%rax
  400d00:	c9                   	leaveq 
  400d01:	c3                   	retq   
  400d02:	90                   	nop
  400d03:	90                   	nop
  400d04:	90                   	nop
  400d05:	90                   	nop
  400d06:	90                   	nop
  400d07:	90                   	nop
  400d08:	90                   	nop
  400d09:	90                   	nop
  400d0a:	90                   	nop
  400d0b:	90                   	nop
  400d0c:	90                   	nop
  400d0d:	90                   	nop
  400d0e:	90                   	nop
  400d0f:	90                   	nop

0000000000400d10 <clearjob>:
  400d10:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  400d16:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  400d1d:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%rdi)
  400d24:	c6 47 0c 00          	movb   $0x0,0xc(%rdi)
  400d28:	c3                   	retq   
  400d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d30 <initjobs>:
  400d30:	31 c0                	xor    %eax,%eax
  400d32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400d38:	c7 04 07 00 00 00 00 	movl   $0x0,(%rdi,%rax,1)
  400d3f:	c7 44 07 04 00 00 00 	movl   $0x0,0x4(%rdi,%rax,1)
  400d46:	00 
  400d47:	c7 44 07 08 00 00 00 	movl   $0x0,0x8(%rdi,%rax,1)
  400d4e:	00 
  400d4f:	c6 44 07 0c 00       	movb   $0x0,0xc(%rdi,%rax,1)
  400d54:	48 05 0c 04 00 00    	add    $0x40c,%rax
  400d5a:	48 3d c0 40 00 00    	cmp    $0x40c0,%rax
  400d60:	75 d6                	jne    400d38 <initjobs+0x8>
  400d62:	f3 c3                	repz retq 
  400d64:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400d6b:	00 00 00 00 00 

0000000000400d70 <maxjid>:
  400d70:	31 d2                	xor    %edx,%edx
  400d72:	31 c0                	xor    %eax,%eax
  400d74:	0f 1f 40 00          	nopl   0x0(%rax)
  400d78:	8b 4c 17 04          	mov    0x4(%rdi,%rdx,1),%ecx
  400d7c:	39 c8                	cmp    %ecx,%eax
  400d7e:	0f 4c c1             	cmovl  %ecx,%eax
  400d81:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  400d88:	48 81 fa c0 40 00 00 	cmp    $0x40c0,%rdx
  400d8f:	75 e7                	jne    400d78 <maxjid+0x8>
  400d91:	f3 c3                	repz retq 
  400d93:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400d9a:	84 00 00 00 00 00 

0000000000400da0 <deletejob>:
  400da0:	85 f6                	test   %esi,%esi
  400da2:	7e 1e                	jle    400dc2 <deletejob+0x22>
  400da4:	48 89 f8             	mov    %rdi,%rax
  400da7:	31 d2                	xor    %edx,%edx
  400da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400db0:	39 30                	cmp    %esi,(%rax)
  400db2:	74 14                	je     400dc8 <deletejob+0x28>
  400db4:	83 c2 01             	add    $0x1,%edx
  400db7:	48 05 0c 04 00 00    	add    $0x40c,%rax
  400dbd:	83 fa 10             	cmp    $0x10,%edx
  400dc0:	75 ee                	jne    400db0 <deletejob+0x10>
  400dc2:	31 c0                	xor    %eax,%eax
  400dc4:	c3                   	retq   
  400dc5:	0f 1f 00             	nopl   (%rax)
  400dc8:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  400dce:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  400dd5:	31 d2                	xor    %edx,%edx
  400dd7:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  400dde:	c6 40 0c 00          	movb   $0x0,0xc(%rax)
  400de2:	31 c0                	xor    %eax,%eax
  400de4:	0f 1f 40 00          	nopl   0x0(%rax)
  400de8:	8b 4c 07 04          	mov    0x4(%rdi,%rax,1),%ecx
  400dec:	39 ca                	cmp    %ecx,%edx
  400dee:	0f 4c d1             	cmovl  %ecx,%edx
  400df1:	48 05 0c 04 00 00    	add    $0x40c,%rax
  400df7:	48 3d c0 40 00 00    	cmp    $0x40c0,%rax
  400dfd:	75 e9                	jne    400de8 <deletejob+0x48>
  400dff:	83 c2 01             	add    $0x1,%edx
  400e02:	66 b8 01 00          	mov    $0x1,%ax
  400e06:	89 15 b0 24 20 00    	mov    %edx,0x2024b0(%rip)        # 6032bc <nextjid>
  400e0c:	c3                   	retq   
  400e0d:	0f 1f 00             	nopl   (%rax)

0000000000400e10 <fgpid>:
  400e10:	31 c0                	xor    %eax,%eax
  400e12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e18:	83 7f 08 01          	cmpl   $0x1,0x8(%rdi)
  400e1c:	74 12                	je     400e30 <fgpid+0x20>
  400e1e:	83 c0 01             	add    $0x1,%eax
  400e21:	48 81 c7 0c 04 00 00 	add    $0x40c,%rdi
  400e28:	83 f8 10             	cmp    $0x10,%eax
  400e2b:	75 eb                	jne    400e18 <fgpid+0x8>
  400e2d:	30 c0                	xor    %al,%al
  400e2f:	c3                   	retq   
  400e30:	8b 07                	mov    (%rdi),%eax
  400e32:	c3                   	retq   
  400e33:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400e3a:	84 00 00 00 00 00 

0000000000400e40 <getjobpid>:
  400e40:	85 f6                	test   %esi,%esi
  400e42:	7f 0c                	jg     400e50 <getjobpid+0x10>
  400e44:	31 c0                	xor    %eax,%eax
  400e46:	f3 c3                	repz retq 
  400e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400e4f:	00 
  400e50:	31 d2                	xor    %edx,%edx
  400e52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e58:	39 37                	cmp    %esi,(%rdi)
  400e5a:	48 89 f8             	mov    %rdi,%rax
  400e5d:	74 e7                	je     400e46 <getjobpid+0x6>
  400e5f:	83 c2 01             	add    $0x1,%edx
  400e62:	48 81 c7 0c 04 00 00 	add    $0x40c,%rdi
  400e69:	83 fa 10             	cmp    $0x10,%edx
  400e6c:	75 ea                	jne    400e58 <getjobpid+0x18>
  400e6e:	31 c0                	xor    %eax,%eax
  400e70:	eb d4                	jmp    400e46 <getjobpid+0x6>
  400e72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400e79:	1f 84 00 00 00 00 00 

0000000000400e80 <getjobjid>:
  400e80:	85 f6                	test   %esi,%esi
  400e82:	7f 0c                	jg     400e90 <getjobjid+0x10>
  400e84:	31 c0                	xor    %eax,%eax
  400e86:	f3 c3                	repz retq 
  400e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400e8f:	00 
  400e90:	31 d2                	xor    %edx,%edx
  400e92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e98:	39 77 04             	cmp    %esi,0x4(%rdi)
  400e9b:	48 89 f8             	mov    %rdi,%rax
  400e9e:	74 e6                	je     400e86 <getjobjid+0x6>
  400ea0:	83 c2 01             	add    $0x1,%edx
  400ea3:	48 81 c7 0c 04 00 00 	add    $0x40c,%rdi
  400eaa:	83 fa 10             	cmp    $0x10,%edx
  400ead:	75 e9                	jne    400e98 <getjobjid+0x18>
  400eaf:	31 c0                	xor    %eax,%eax
  400eb1:	eb d3                	jmp    400e86 <getjobjid+0x6>
  400eb3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400eba:	84 00 00 00 00 00 

0000000000400ec0 <pid2jid>:
  400ec0:	85 ff                	test   %edi,%edi
  400ec2:	7e 1e                	jle    400ee2 <pid2jid+0x22>
  400ec4:	b8 20 37 60 00       	mov    $0x603720,%eax
  400ec9:	31 d2                	xor    %edx,%edx
  400ecb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ed0:	39 38                	cmp    %edi,(%rax)
  400ed2:	74 14                	je     400ee8 <pid2jid+0x28>
  400ed4:	83 c2 01             	add    $0x1,%edx
  400ed7:	48 05 0c 04 00 00    	add    $0x40c,%rax
  400edd:	83 fa 10             	cmp    $0x10,%edx
  400ee0:	75 ee                	jne    400ed0 <pid2jid+0x10>
  400ee2:	31 c0                	xor    %eax,%eax
  400ee4:	c3                   	retq   
  400ee5:	0f 1f 00             	nopl   (%rax)
  400ee8:	48 63 d2             	movslq %edx,%rdx
  400eeb:	48 69 d2 0c 04 00 00 	imul   $0x40c,%rdx,%rdx
  400ef2:	8b 82 24 37 60 00    	mov    0x603724(%rdx),%eax
  400ef8:	c3                   	retq   
  400ef9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f00 <sigquit_handler>:
  400f00:	bf e8 1f 40 00       	mov    $0x401fe8,%edi
  400f05:	48 83 ec 08          	sub    $0x8,%rsp
  400f09:	e8 82 fb ff ff       	callq  400a90 <puts@plt>
  400f0e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f13:	e8 88 fb ff ff       	callq  400aa0 <exit@plt>
  400f18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400f1f:	00 

0000000000400f20 <usage>:
  400f20:	48 83 ec 08          	sub    $0x8,%rsp
  400f24:	bf 30 22 40 00       	mov    $0x402230,%edi
  400f29:	e8 62 fb ff ff       	callq  400a90 <puts@plt>
  400f2e:	bf 44 22 40 00       	mov    $0x402244,%edi
  400f33:	e8 58 fb ff ff       	callq  400a90 <puts@plt>
  400f38:	bf 18 20 40 00       	mov    $0x402018,%edi
  400f3d:	e8 4e fb ff ff       	callq  400a90 <puts@plt>
  400f42:	bf 48 20 40 00       	mov    $0x402048,%edi
  400f47:	e8 44 fb ff ff       	callq  400a90 <puts@plt>
  400f4c:	bf 01 00 00 00       	mov    $0x1,%edi
  400f51:	e8 4a fb ff ff       	callq  400aa0 <exit@plt>
  400f56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f5d:	00 00 00 

0000000000400f60 <app_error>:
  400f60:	48 83 ec 08          	sub    $0x8,%rsp
  400f64:	48 89 fa             	mov    %rdi,%rdx
  400f67:	48 8b 3d 62 23 20 00 	mov    0x202362(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  400f6e:	be 63 22 40 00       	mov    $0x402263,%esi
  400f73:	31 c0                	xor    %eax,%eax
  400f75:	e8 86 fc ff ff       	callq  400c00 <fprintf@plt>
  400f7a:	bf 01 00 00 00       	mov    $0x1,%edi
  400f7f:	e8 1c fb ff ff       	callq  400aa0 <exit@plt>
  400f84:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400f8b:	00 00 00 00 00 

0000000000400f90 <unix_error>:
  400f90:	53                   	push   %rbx
  400f91:	48 89 fb             	mov    %rdi,%rbx
  400f94:	e8 07 fc ff ff       	callq  400ba0 <__errno_location@plt>
  400f99:	8b 38                	mov    (%rax),%edi
  400f9b:	e8 90 fb ff ff       	callq  400b30 <strerror@plt>
  400fa0:	48 8b 3d 29 23 20 00 	mov    0x202329(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  400fa7:	48 89 c1             	mov    %rax,%rcx
  400faa:	48 89 da             	mov    %rbx,%rdx
  400fad:	be 5f 22 40 00       	mov    $0x40225f,%esi
  400fb2:	31 c0                	xor    %eax,%eax
  400fb4:	e8 47 fc ff ff       	callq  400c00 <fprintf@plt>
  400fb9:	bf 01 00 00 00       	mov    $0x1,%edi
  400fbe:	e8 dd fa ff ff       	callq  400aa0 <exit@plt>
  400fc3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400fca:	84 00 00 00 00 00 

0000000000400fd0 <Signal>:
  400fd0:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  400fd5:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  400fda:	48 81 ec 58 01 00 00 	sub    $0x158,%rsp
  400fe1:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
  400fe8:	00 
  400fe9:	89 fb                	mov    %edi,%ebx
  400feb:	48 89 b4 24 a0 00 00 	mov    %rsi,0xa0(%rsp)
  400ff2:	00 
  400ff3:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  400ff7:	e8 f4 fb ff ff       	callq  400bf0 <sigemptyset@plt>
  400ffc:	48 89 e2             	mov    %rsp,%rdx
  400fff:	48 89 ee             	mov    %rbp,%rsi
  401002:	89 df                	mov    %ebx,%edi
  401004:	c7 84 24 28 01 00 00 	movl   $0x10000000,0x128(%rsp)
  40100b:	00 00 00 10 
  40100f:	e8 3c fb ff ff       	callq  400b50 <sigaction@plt>
  401014:	85 c0                	test   %eax,%eax
  401016:	78 20                	js     401038 <Signal+0x68>
  401018:	48 8b 04 24          	mov    (%rsp),%rax
  40101c:	48 8b 9c 24 48 01 00 	mov    0x148(%rsp),%rbx
  401023:	00 
  401024:	48 8b ac 24 50 01 00 	mov    0x150(%rsp),%rbp
  40102b:	00 
  40102c:	48 81 c4 58 01 00 00 	add    $0x158,%rsp
  401033:	c3                   	retq   
  401034:	0f 1f 40 00          	nopl   0x0(%rax)
  401038:	bf 67 22 40 00       	mov    $0x402267,%edi
  40103d:	e8 4e ff ff ff       	callq  400f90 <unix_error>
  401042:	eb d4                	jmp    401018 <Signal+0x48>
  401044:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40104b:	00 00 00 00 00 

0000000000401050 <listjobs>:
  401050:	55                   	push   %rbp
  401051:	31 ed                	xor    %ebp,%ebp
  401053:	53                   	push   %rbx
  401054:	48 89 fb             	mov    %rdi,%rbx
  401057:	48 83 ec 08          	sub    $0x8,%rsp
  40105b:	eb 12                	jmp    40106f <listjobs+0x1f>
  40105d:	0f 1f 00             	nopl   (%rax)
  401060:	83 c5 01             	add    $0x1,%ebp
  401063:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  40106a:	83 fd 10             	cmp    $0x10,%ebp
  40106d:	74 54                	je     4010c3 <listjobs+0x73>
  40106f:	8b 13                	mov    (%rbx),%edx
  401071:	85 d2                	test   %edx,%edx
  401073:	74 eb                	je     401060 <listjobs+0x10>
  401075:	8b 73 04             	mov    0x4(%rbx),%esi
  401078:	31 c0                	xor    %eax,%eax
  40107a:	bf 74 22 40 00       	mov    $0x402274,%edi
  40107f:	e8 fc f9 ff ff       	callq  400a80 <printf@plt>
  401084:	8b 53 08             	mov    0x8(%rbx),%edx
  401087:	83 fa 02             	cmp    $0x2,%edx
  40108a:	74 44                	je     4010d0 <listjobs+0x80>
  40108c:	83 fa 03             	cmp    $0x3,%edx
  40108f:	74 5f                	je     4010f0 <listjobs+0xa0>
  401091:	83 fa 01             	cmp    $0x1,%edx
  401094:	74 4a                	je     4010e0 <listjobs+0x90>
  401096:	89 ee                	mov    %ebp,%esi
  401098:	bf 70 20 40 00       	mov    $0x402070,%edi
  40109d:	31 c0                	xor    %eax,%eax
  40109f:	e8 dc f9 ff ff       	callq  400a80 <printf@plt>
  4010a4:	48 8d 73 0c          	lea    0xc(%rbx),%rsi
  4010a8:	31 c0                	xor    %eax,%eax
  4010aa:	bf 10 24 40 00       	mov    $0x402410,%edi
  4010af:	83 c5 01             	add    $0x1,%ebp
  4010b2:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  4010b9:	e8 c2 f9 ff ff       	callq  400a80 <printf@plt>
  4010be:	83 fd 10             	cmp    $0x10,%ebp
  4010c1:	75 ac                	jne    40106f <listjobs+0x1f>
  4010c3:	48 83 c4 08          	add    $0x8,%rsp
  4010c7:	5b                   	pop    %rbx
  4010c8:	5d                   	pop    %rbp
  4010c9:	c3                   	retq   
  4010ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4010d0:	bf 7f 22 40 00       	mov    $0x40227f,%edi
  4010d5:	31 c0                	xor    %eax,%eax
  4010d7:	e8 a4 f9 ff ff       	callq  400a80 <printf@plt>
  4010dc:	eb c6                	jmp    4010a4 <listjobs+0x54>
  4010de:	66 90                	xchg   %ax,%ax
  4010e0:	bf 88 22 40 00       	mov    $0x402288,%edi
  4010e5:	31 c0                	xor    %eax,%eax
  4010e7:	e8 94 f9 ff ff       	callq  400a80 <printf@plt>
  4010ec:	eb b6                	jmp    4010a4 <listjobs+0x54>
  4010ee:	66 90                	xchg   %ax,%ax
  4010f0:	bf 94 22 40 00       	mov    $0x402294,%edi
  4010f5:	31 c0                	xor    %eax,%eax
  4010f7:	e8 84 f9 ff ff       	callq  400a80 <printf@plt>
  4010fc:	eb a6                	jmp    4010a4 <listjobs+0x54>
  4010fe:	66 90                	xchg   %ax,%ax

0000000000401100 <addjob>:
  401100:	55                   	push   %rbp
  401101:	31 c0                	xor    %eax,%eax
  401103:	53                   	push   %rbx
  401104:	48 89 fb             	mov    %rdi,%rbx
  401107:	31 ff                	xor    %edi,%edi
  401109:	48 83 ec 08          	sub    $0x8,%rsp
  40110d:	85 f6                	test   %esi,%esi
  40110f:	7e 28                	jle    401139 <addjob+0x39>
  401111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401118:	8b 2b                	mov    (%rbx),%ebp
  40111a:	85 ed                	test   %ebp,%ebp
  40111c:	74 22                	je     401140 <addjob+0x40>
  40111e:	83 c7 01             	add    $0x1,%edi
  401121:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  401128:	83 ff 10             	cmp    $0x10,%edi
  40112b:	75 eb                	jne    401118 <addjob+0x18>
  40112d:	bf b3 22 40 00       	mov    $0x4022b3,%edi
  401132:	e8 59 f9 ff ff       	callq  400a90 <puts@plt>
  401137:	31 c0                	xor    %eax,%eax
  401139:	48 83 c4 08          	add    $0x8,%rsp
  40113d:	5b                   	pop    %rbx
  40113e:	5d                   	pop    %rbp
  40113f:	c3                   	retq   
  401140:	89 53 08             	mov    %edx,0x8(%rbx)
  401143:	8b 15 73 21 20 00    	mov    0x202173(%rip),%edx        # 6032bc <nextjid>
  401149:	48 8d 6b 0c          	lea    0xc(%rbx),%rbp
  40114d:	b8 01 00 00 00       	mov    $0x1,%eax
  401152:	89 33                	mov    %esi,(%rbx)
  401154:	48 89 ce             	mov    %rcx,%rsi
  401157:	48 89 ef             	mov    %rbp,%rdi
  40115a:	89 53 04             	mov    %edx,0x4(%rbx)
  40115d:	83 c2 01             	add    $0x1,%edx
  401160:	83 fa 11             	cmp    $0x11,%edx
  401163:	0f 4c c2             	cmovl  %edx,%eax
  401166:	89 05 50 21 20 00    	mov    %eax,0x202150(%rip)        # 6032bc <nextjid>
  40116c:	e8 4f fa ff ff       	callq  400bc0 <strcpy@plt>
  401171:	8b 15 89 21 20 00    	mov    0x202189(%rip),%edx        # 603300 <verbose>
  401177:	b8 01 00 00 00       	mov    $0x1,%eax
  40117c:	85 d2                	test   %edx,%edx
  40117e:	74 b9                	je     401139 <addjob+0x39>
  401180:	8b 73 04             	mov    0x4(%rbx),%esi
  401183:	8b 13                	mov    (%rbx),%edx
  401185:	48 89 e9             	mov    %rbp,%rcx
  401188:	bf 9d 22 40 00       	mov    $0x40229d,%edi
  40118d:	31 c0                	xor    %eax,%eax
  40118f:	e8 ec f8 ff ff       	callq  400a80 <printf@plt>
  401194:	b8 01 00 00 00       	mov    $0x1,%eax
  401199:	eb 9e                	jmp    401139 <addjob+0x39>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <sigtstp_handler>:
  4011a0:	44 8b 15 59 21 20 00 	mov    0x202159(%rip),%r10d        # 603300 <verbose>
  4011a7:	53                   	push   %rbx
  4011a8:	45 85 d2             	test   %r10d,%r10d
  4011ab:	0f 85 af 00 00 00    	jne    401260 <sigtstp_handler+0xc0>
  4011b1:	b8 20 37 60 00       	mov    $0x603720,%eax
  4011b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011bd:	00 00 00 
  4011c0:	83 78 08 01          	cmpl   $0x1,0x8(%rax)
  4011c4:	74 32                	je     4011f8 <sigtstp_handler+0x58>
  4011c6:	48 05 0c 04 00 00    	add    $0x40c,%rax
  4011cc:	48 3d e0 77 60 00    	cmp    $0x6077e0,%rax
  4011d2:	75 ec                	jne    4011c0 <sigtstp_handler+0x20>
  4011d4:	44 8b 05 25 21 20 00 	mov    0x202125(%rip),%r8d        # 603300 <verbose>
  4011db:	45 85 c0             	test   %r8d,%r8d
  4011de:	74 10                	je     4011f0 <sigtstp_handler+0x50>
  4011e0:	5b                   	pop    %rbx
  4011e1:	bf fd 22 40 00       	mov    $0x4022fd,%edi
  4011e6:	e9 a5 f8 ff ff       	jmpq   400a90 <puts@plt>
  4011eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011f0:	5b                   	pop    %rbx
  4011f1:	c3                   	retq   
  4011f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4011f8:	8b 18                	mov    (%rax),%ebx
  4011fa:	85 db                	test   %ebx,%ebx
  4011fc:	7e d6                	jle    4011d4 <sigtstp_handler+0x34>
  4011fe:	89 df                	mov    %ebx,%edi
  401200:	be 14 00 00 00       	mov    $0x14,%esi
  401205:	f7 df                	neg    %edi
  401207:	e8 14 f9 ff ff       	callq  400b20 <kill@plt>
  40120c:	85 c0                	test   %eax,%eax
  40120e:	78 70                	js     401280 <sigtstp_handler+0xe0>
  401210:	44 8b 0d e9 20 20 00 	mov    0x2020e9(%rip),%r9d        # 603300 <verbose>
  401217:	45 85 c9             	test   %r9d,%r9d
  40121a:	74 d4                	je     4011f0 <sigtstp_handler+0x50>
  40121c:	ba 20 37 60 00       	mov    $0x603720,%edx
  401221:	31 c0                	xor    %eax,%eax
  401223:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401228:	3b 1a                	cmp    (%rdx),%ebx
  40122a:	74 43                	je     40126f <sigtstp_handler+0xcf>
  40122c:	83 c0 01             	add    $0x1,%eax
  40122f:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  401236:	83 f8 10             	cmp    $0x10,%eax
  401239:	75 ed                	jne    401228 <sigtstp_handler+0x88>
  40123b:	31 f6                	xor    %esi,%esi
  40123d:	31 c0                	xor    %eax,%eax
  40123f:	89 da                	mov    %ebx,%edx
  401241:	bf a0 20 40 00       	mov    $0x4020a0,%edi
  401246:	e8 35 f8 ff ff       	callq  400a80 <printf@plt>
  40124b:	44 8b 05 ae 20 20 00 	mov    0x2020ae(%rip),%r8d        # 603300 <verbose>
  401252:	45 85 c0             	test   %r8d,%r8d
  401255:	75 89                	jne    4011e0 <sigtstp_handler+0x40>
  401257:	eb 97                	jmp    4011f0 <sigtstp_handler+0x50>
  401259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401260:	bf d1 22 40 00       	mov    $0x4022d1,%edi
  401265:	e8 26 f8 ff ff       	callq  400a90 <puts@plt>
  40126a:	e9 42 ff ff ff       	jmpq   4011b1 <sigtstp_handler+0x11>
  40126f:	48 98                	cltq   
  401271:	48 69 c0 0c 04 00 00 	imul   $0x40c,%rax,%rax
  401278:	8b b0 24 37 60 00    	mov    0x603724(%rax),%esi
  40127e:	eb bd                	jmp    40123d <sigtstp_handler+0x9d>
  401280:	bf eb 22 40 00       	mov    $0x4022eb,%edi
  401285:	e8 06 fd ff ff       	callq  400f90 <unix_error>
  40128a:	eb 84                	jmp    401210 <sigtstp_handler+0x70>
  40128c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401290 <sigint_handler>:
  401290:	8b 15 6a 20 20 00    	mov    0x20206a(%rip),%edx        # 603300 <verbose>
  401296:	53                   	push   %rbx
  401297:	85 d2                	test   %edx,%edx
  401299:	75 5d                	jne    4012f8 <sigint_handler+0x68>
  40129b:	b8 20 37 60 00       	mov    $0x603720,%eax
  4012a0:	83 78 08 01          	cmpl   $0x1,0x8(%rax)
  4012a4:	74 2a                	je     4012d0 <sigint_handler+0x40>
  4012a6:	48 05 0c 04 00 00    	add    $0x40c,%rax
  4012ac:	48 3d e0 77 60 00    	cmp    $0x6077e0,%rax
  4012b2:	75 ec                	jne    4012a0 <sigint_handler+0x10>
  4012b4:	44 8b 1d 45 20 20 00 	mov    0x202045(%rip),%r11d        # 603300 <verbose>
  4012bb:	45 85 db             	test   %r11d,%r11d
  4012be:	74 32                	je     4012f2 <sigint_handler+0x62>
  4012c0:	5b                   	pop    %rbx
  4012c1:	bf 43 23 40 00       	mov    $0x402343,%edi
  4012c6:	e9 c5 f7 ff ff       	jmpq   400a90 <puts@plt>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012d0:	8b 18                	mov    (%rax),%ebx
  4012d2:	85 db                	test   %ebx,%ebx
  4012d4:	7e de                	jle    4012b4 <sigint_handler+0x24>
  4012d6:	89 df                	mov    %ebx,%edi
  4012d8:	be 02 00 00 00       	mov    $0x2,%esi
  4012dd:	f7 df                	neg    %edi
  4012df:	e8 3c f8 ff ff       	callq  400b20 <kill@plt>
  4012e4:	85 c0                	test   %eax,%eax
  4012e6:	78 3c                	js     401324 <sigint_handler+0x94>
  4012e8:	8b 05 12 20 20 00    	mov    0x202012(%rip),%eax        # 603300 <verbose>
  4012ee:	85 c0                	test   %eax,%eax
  4012f0:	75 16                	jne    401308 <sigint_handler+0x78>
  4012f2:	5b                   	pop    %rbx
  4012f3:	c3                   	retq   
  4012f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012f8:	bf 16 23 40 00       	mov    $0x402316,%edi
  4012fd:	e8 8e f7 ff ff       	callq  400a90 <puts@plt>
  401302:	eb 97                	jmp    40129b <sigint_handler+0xb>
  401304:	0f 1f 40 00          	nopl   0x0(%rax)
  401308:	31 c0                	xor    %eax,%eax
  40130a:	89 de                	mov    %ebx,%esi
  40130c:	bf c8 20 40 00       	mov    $0x4020c8,%edi
  401311:	e8 6a f7 ff ff       	callq  400a80 <printf@plt>
  401316:	44 8b 1d e3 1f 20 00 	mov    0x201fe3(%rip),%r11d        # 603300 <verbose>
  40131d:	45 85 db             	test   %r11d,%r11d
  401320:	75 9e                	jne    4012c0 <sigint_handler+0x30>
  401322:	eb ce                	jmp    4012f2 <sigint_handler+0x62>
  401324:	bf 2f 23 40 00       	mov    $0x40232f,%edi
  401329:	e8 62 fc ff ff       	callq  400f90 <unix_error>
  40132e:	66 90                	xchg   %ax,%ax
  401330:	eb b6                	jmp    4012e8 <sigint_handler+0x58>
  401332:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401339:	1f 84 00 00 00 00 00 

0000000000401340 <sigchld_handler>:
  401340:	41 54                	push   %r12
  401342:	55                   	push   %rbp
  401343:	53                   	push   %rbx
  401344:	48 83 ec 10          	sub    $0x10,%rsp
  401348:	44 8b 0d b1 1f 20 00 	mov    0x201fb1(%rip),%r9d        # 603300 <verbose>
  40134f:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
  401354:	45 85 c9             	test   %r9d,%r9d
  401357:	0f 85 70 02 00 00    	jne    4015cd <sigchld_handler+0x28d>
  40135d:	0f 1f 00             	nopl   (%rax)
  401360:	ba 03 00 00 00       	mov    $0x3,%edx
  401365:	48 89 ee             	mov    %rbp,%rsi
  401368:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  40136d:	e8 1e f8 ff ff       	callq  400b90 <waitpid@plt>
  401372:	83 f8 00             	cmp    $0x0,%eax
  401375:	89 c3                	mov    %eax,%ebx
  401377:	0f 8e 03 02 00 00    	jle    401580 <sigchld_handler+0x240>
  40137d:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  401381:	80 f9 7f             	cmp    $0x7f,%cl
  401384:	74 7a                	je     401400 <sigchld_handler+0xc0>
  401386:	89 c8                	mov    %ecx,%eax
  401388:	83 e0 7f             	and    $0x7f,%eax
  40138b:	83 c0 01             	add    $0x1,%eax
  40138e:	d0 f8                	sar    %al
  401390:	84 c0                	test   %al,%al
  401392:	0f 8e a0 00 00 00    	jle    401438 <sigchld_handler+0xf8>
  401398:	b8 20 37 60 00       	mov    $0x603720,%eax
  40139d:	31 d2                	xor    %edx,%edx
  40139f:	90                   	nop
  4013a0:	3b 18                	cmp    (%rax),%ebx
  4013a2:	0f 84 20 01 00 00    	je     4014c8 <sigchld_handler+0x188>
  4013a8:	83 c2 01             	add    $0x1,%edx
  4013ab:	48 05 0c 04 00 00    	add    $0x40c,%rax
  4013b1:	83 fa 10             	cmp    $0x10,%edx
  4013b4:	75 ea                	jne    4013a0 <sigchld_handler+0x60>
  4013b6:	45 31 e4             	xor    %r12d,%r12d
  4013b9:	89 de                	mov    %ebx,%esi
  4013bb:	bf 20 37 60 00       	mov    $0x603720,%edi
  4013c0:	e8 db f9 ff ff       	callq  400da0 <deletejob>
  4013c5:	85 c0                	test   %eax,%eax
  4013c7:	74 10                	je     4013d9 <sigchld_handler+0x99>
  4013c9:	44 8b 05 30 1f 20 00 	mov    0x201f30(%rip),%r8d        # 603300 <verbose>
  4013d0:	45 85 c0             	test   %r8d,%r8d
  4013d3:	0f 85 77 01 00 00    	jne    401550 <sigchld_handler+0x210>
  4013d9:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
  4013de:	48 8b 3d eb 1e 20 00 	mov    0x201eeb(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  4013e5:	89 d9                	mov    %ebx,%ecx
  4013e7:	44 89 e2             	mov    %r12d,%edx
  4013ea:	be 40 21 40 00       	mov    $0x402140,%esi
  4013ef:	31 c0                	xor    %eax,%eax
  4013f1:	41 83 e0 7f          	and    $0x7f,%r8d
  4013f5:	e8 06 f8 ff ff       	callq  400c00 <fprintf@plt>
  4013fa:	e9 61 ff ff ff       	jmpq   401360 <sigchld_handler+0x20>
  4013ff:	90                   	nop
  401400:	b8 20 37 60 00       	mov    $0x603720,%eax
  401405:	0f 1f 00             	nopl   (%rax)
  401408:	3b 18                	cmp    (%rax),%ebx
  40140a:	0f 84 d0 00 00 00    	je     4014e0 <sigchld_handler+0x1a0>
  401410:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401416:	48 3d e0 77 60 00    	cmp    $0x6077e0,%rax
  40141c:	75 ea                	jne    401408 <sigchld_handler+0xc8>
  40141e:	89 de                	mov    %ebx,%esi
  401420:	bf 75 23 40 00       	mov    $0x402375,%edi
  401425:	31 c0                	xor    %eax,%eax
  401427:	e8 54 f6 ff ff       	callq  400a80 <printf@plt>
  40142c:	48 83 c4 10          	add    $0x10,%rsp
  401430:	5b                   	pop    %rbx
  401431:	5d                   	pop    %rbp
  401432:	41 5c                	pop    %r12
  401434:	c3                   	retq   
  401435:	0f 1f 00             	nopl   (%rax)
  401438:	83 e1 7f             	and    $0x7f,%ecx
  40143b:	0f 85 2f 01 00 00    	jne    401570 <sigchld_handler+0x230>
  401441:	ba 20 37 60 00       	mov    $0x603720,%edx
  401446:	31 c0                	xor    %eax,%eax
  401448:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40144f:	00 
  401450:	3b 1a                	cmp    (%rdx),%ebx
  401452:	0f 84 60 01 00 00    	je     4015b8 <sigchld_handler+0x278>
  401458:	83 c0 01             	add    $0x1,%eax
  40145b:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  401462:	83 f8 10             	cmp    $0x10,%eax
  401465:	75 e9                	jne    401450 <sigchld_handler+0x110>
  401467:	45 31 e4             	xor    %r12d,%r12d
  40146a:	89 de                	mov    %ebx,%esi
  40146c:	bf 20 37 60 00       	mov    $0x603720,%edi
  401471:	e8 2a f9 ff ff       	callq  400da0 <deletejob>
  401476:	85 c0                	test   %eax,%eax
  401478:	74 1f                	je     401499 <sigchld_handler+0x159>
  40147a:	8b 3d 80 1e 20 00    	mov    0x201e80(%rip),%edi        # 603300 <verbose>
  401480:	85 ff                	test   %edi,%edi
  401482:	0f 84 d8 fe ff ff    	je     401360 <sigchld_handler+0x20>
  401488:	89 da                	mov    %ebx,%edx
  40148a:	44 89 e6             	mov    %r12d,%esi
  40148d:	bf 18 21 40 00       	mov    $0x402118,%edi
  401492:	31 c0                	xor    %eax,%eax
  401494:	e8 e7 f5 ff ff       	callq  400a80 <printf@plt>
  401499:	8b 35 61 1e 20 00    	mov    0x201e61(%rip),%esi        # 603300 <verbose>
  40149f:	85 f6                	test   %esi,%esi
  4014a1:	0f 84 b9 fe ff ff    	je     401360 <sigchld_handler+0x20>
  4014a7:	0f b6 4c 24 0d       	movzbl 0xd(%rsp),%ecx
  4014ac:	89 da                	mov    %ebx,%edx
  4014ae:	44 89 e6             	mov    %r12d,%esi
  4014b1:	bf 68 21 40 00       	mov    $0x402168,%edi
  4014b6:	31 c0                	xor    %eax,%eax
  4014b8:	e8 c3 f5 ff ff       	callq  400a80 <printf@plt>
  4014bd:	e9 9e fe ff ff       	jmpq   401360 <sigchld_handler+0x20>
  4014c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4014c8:	48 63 d2             	movslq %edx,%rdx
  4014cb:	48 69 d2 0c 04 00 00 	imul   $0x40c,%rdx,%rdx
  4014d2:	44 8b a2 24 37 60 00 	mov    0x603724(%rdx),%r12d
  4014d9:	e9 db fe ff ff       	jmpq   4013b9 <sigchld_handler+0x79>
  4014de:	66 90                	xchg   %ax,%ax
  4014e0:	48 85 c0             	test   %rax,%rax
  4014e3:	0f 84 35 ff ff ff    	je     40141e <sigchld_handler+0xde>
  4014e9:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
  4014f0:	ba 20 37 60 00       	mov    $0x603720,%edx
  4014f5:	31 c0                	xor    %eax,%eax
  4014f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4014fe:	00 00 
  401500:	3b 1a                	cmp    (%rdx),%ebx
  401502:	74 34                	je     401538 <sigchld_handler+0x1f8>
  401504:	83 c0 01             	add    $0x1,%eax
  401507:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  40150e:	83 f8 10             	cmp    $0x10,%eax
  401511:	75 ed                	jne    401500 <sigchld_handler+0x1c0>
  401513:	31 d2                	xor    %edx,%edx
  401515:	48 8b 3d b4 1d 20 00 	mov    0x201db4(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  40151c:	0f b6 cd             	movzbl %ch,%ecx
  40151f:	be f0 20 40 00       	mov    $0x4020f0,%esi
  401524:	41 89 c8             	mov    %ecx,%r8d
  401527:	31 c0                	xor    %eax,%eax
  401529:	89 d9                	mov    %ebx,%ecx
  40152b:	e8 d0 f6 ff ff       	callq  400c00 <fprintf@plt>
  401530:	e9 2b fe ff ff       	jmpq   401360 <sigchld_handler+0x20>
  401535:	0f 1f 00             	nopl   (%rax)
  401538:	48 98                	cltq   
  40153a:	48 69 c0 0c 04 00 00 	imul   $0x40c,%rax,%rax
  401541:	8b 90 24 37 60 00    	mov    0x603724(%rax),%edx
  401547:	eb cc                	jmp    401515 <sigchld_handler+0x1d5>
  401549:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401550:	89 da                	mov    %ebx,%edx
  401552:	44 89 e6             	mov    %r12d,%esi
  401555:	bf 18 21 40 00       	mov    $0x402118,%edi
  40155a:	31 c0                	xor    %eax,%eax
  40155c:	e8 1f f5 ff ff       	callq  400a80 <printf@plt>
  401561:	e9 73 fe ff ff       	jmpq   4013d9 <sigchld_handler+0x99>
  401566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40156d:	00 00 00 
  401570:	bf 89 23 40 00       	mov    $0x402389,%edi
  401575:	e8 16 fa ff ff       	callq  400f90 <unix_error>
  40157a:	e9 e1 fd ff ff       	jmpq   401360 <sigchld_handler+0x20>
  40157f:	90                   	nop
  401580:	74 0f                	je     401591 <sigchld_handler+0x251>
  401582:	83 f8 ff             	cmp    $0xffffffff,%eax
  401585:	74 55                	je     4015dc <sigchld_handler+0x29c>
  401587:	bf 97 23 40 00       	mov    $0x402397,%edi
  40158c:	e8 ff f9 ff ff       	callq  400f90 <unix_error>
  401591:	8b 0d 69 1d 20 00    	mov    0x201d69(%rip),%ecx        # 603300 <verbose>
  401597:	85 c9                	test   %ecx,%ecx
  401599:	0f 84 8d fe ff ff    	je     40142c <sigchld_handler+0xec>
  40159f:	bf b2 23 40 00       	mov    $0x4023b2,%edi
  4015a4:	e8 e7 f4 ff ff       	callq  400a90 <puts@plt>
  4015a9:	48 83 c4 10          	add    $0x10,%rsp
  4015ad:	5b                   	pop    %rbx
  4015ae:	5d                   	pop    %rbp
  4015af:	41 5c                	pop    %r12
  4015b1:	c3                   	retq   
  4015b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4015b8:	48 98                	cltq   
  4015ba:	48 69 c0 0c 04 00 00 	imul   $0x40c,%rax,%rax
  4015c1:	44 8b a0 24 37 60 00 	mov    0x603724(%rax),%r12d
  4015c8:	e9 9d fe ff ff       	jmpq   40146a <sigchld_handler+0x12a>
  4015cd:	bf 5b 23 40 00       	mov    $0x40235b,%edi
  4015d2:	e8 b9 f4 ff ff       	callq  400a90 <puts@plt>
  4015d7:	e9 84 fd ff ff       	jmpq   401360 <sigchld_handler+0x20>
  4015dc:	e8 bf f5 ff ff       	callq  400ba0 <__errno_location@plt>
  4015e1:	83 38 0a             	cmpl   $0xa,(%rax)
  4015e4:	75 a1                	jne    401587 <sigchld_handler+0x247>
  4015e6:	eb a9                	jmp    401591 <sigchld_handler+0x251>
  4015e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4015ef:	00 

00000000004015f0 <waitfg>:
  4015f0:	41 54                	push   %r12
  4015f2:	85 ff                	test   %edi,%edi
  4015f4:	55                   	push   %rbp
  4015f5:	89 fd                	mov    %edi,%ebp
  4015f7:	53                   	push   %rbx
  4015f8:	7e 1e                	jle    401618 <waitfg+0x28>
  4015fa:	bb 20 37 60 00       	mov    $0x603720,%ebx
  4015ff:	90                   	nop
  401600:	44 8b 23             	mov    (%rbx),%r12d
  401603:	44 39 e5             	cmp    %r12d,%ebp
  401606:	74 18                	je     401620 <waitfg+0x30>
  401608:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  40160f:	48 81 fb e0 77 60 00 	cmp    $0x6077e0,%rbx
  401616:	75 e8                	jne    401600 <waitfg+0x10>
  401618:	5b                   	pop    %rbx
  401619:	5d                   	pop    %rbp
  40161a:	41 5c                	pop    %r12
  40161c:	c3                   	retq   
  40161d:	0f 1f 00             	nopl   (%rax)
  401620:	48 85 db             	test   %rbx,%rbx
  401623:	75 19                	jne    40163e <waitfg+0x4e>
  401625:	eb f1                	jmp    401618 <waitfg+0x28>
  401627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40162e:	00 00 
  401630:	bf 01 00 00 00       	mov    $0x1,%edi
  401635:	e8 d6 f4 ff ff       	callq  400b10 <sleep@plt>
  40163a:	39 2b                	cmp    %ebp,(%rbx)
  40163c:	75 06                	jne    401644 <waitfg+0x54>
  40163e:	83 7b 08 01          	cmpl   $0x1,0x8(%rbx)
  401642:	74 ec                	je     401630 <waitfg+0x40>
  401644:	44 8b 15 b5 1c 20 00 	mov    0x201cb5(%rip),%r10d        # 603300 <verbose>
  40164b:	45 85 d2             	test   %r10d,%r10d
  40164e:	74 c8                	je     401618 <waitfg+0x28>
  401650:	5b                   	pop    %rbx
  401651:	5d                   	pop    %rbp
  401652:	44 89 e6             	mov    %r12d,%esi
  401655:	bf a8 21 40 00       	mov    $0x4021a8,%edi
  40165a:	31 c0                	xor    %eax,%eax
  40165c:	41 5c                	pop    %r12
  40165e:	e9 1d f4 ff ff       	jmpq   400a80 <printf@plt>
  401663:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40166a:	84 00 00 00 00 00 

0000000000401670 <do_bgfg>:
  401670:	55                   	push   %rbp
  401671:	48 89 fd             	mov    %rdi,%rbp
  401674:	53                   	push   %rbx
  401675:	48 83 ec 08          	sub    $0x8,%rsp
  401679:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  40167d:	48 85 db             	test   %rbx,%rbx
  401680:	0f 84 ca 01 00 00    	je     401850 <do_bgfg+0x1e0>
  401686:	e8 75 f4 ff ff       	callq  400b00 <__ctype_b_loc@plt>
  40168b:	0f b6 13             	movzbl (%rbx),%edx
  40168e:	48 8b 00             	mov    (%rax),%rax
  401691:	48 0f be ca          	movsbq %dl,%rcx
  401695:	f6 44 48 01 08       	testb  $0x8,0x1(%rax,%rcx,2)
  40169a:	75 74                	jne    401710 <do_bgfg+0xa0>
  40169c:	80 fa 25             	cmp    $0x25,%dl
  40169f:	74 1f                	je     4016c0 <do_bgfg+0x50>
  4016a1:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  4016a5:	bf 08 22 40 00       	mov    $0x402208,%edi
  4016aa:	48 83 c4 08          	add    $0x8,%rsp
  4016ae:	31 c0                	xor    %eax,%eax
  4016b0:	5b                   	pop    %rbx
  4016b1:	5d                   	pop    %rbp
  4016b2:	e9 c9 f3 ff ff       	jmpq   400a80 <printf@plt>
  4016b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4016be:	00 00 
  4016c0:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
  4016c4:	31 f6                	xor    %esi,%esi
  4016c6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4016cb:	e8 90 f4 ff ff       	callq  400b60 <strtol@plt>
  4016d0:	85 c0                	test   %eax,%eax
  4016d2:	7e 28                	jle    4016fc <do_bgfg+0x8c>
  4016d4:	ba 20 37 60 00       	mov    $0x603720,%edx
  4016d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4016e0:	3b 42 04             	cmp    0x4(%rdx),%eax
  4016e3:	48 89 d3             	mov    %rdx,%rbx
  4016e6:	0f 84 44 01 00 00    	je     401830 <do_bgfg+0x1c0>
  4016ec:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  4016f3:	48 81 fa e0 77 60 00 	cmp    $0x6077e0,%rdx
  4016fa:	75 e4                	jne    4016e0 <do_bgfg+0x70>
  4016fc:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  401700:	bf e2 23 40 00       	mov    $0x4023e2,%edi
  401705:	eb a3                	jmp    4016aa <do_bgfg+0x3a>
  401707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40170e:	00 00 
  401710:	31 f6                	xor    %esi,%esi
  401712:	ba 0a 00 00 00       	mov    $0xa,%edx
  401717:	48 89 df             	mov    %rbx,%rdi
  40171a:	e8 41 f4 ff ff       	callq  400b60 <strtol@plt>
  40171f:	85 c0                	test   %eax,%eax
  401721:	7e 24                	jle    401747 <do_bgfg+0xd7>
  401723:	ba 20 37 60 00       	mov    $0x603720,%edx
  401728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40172f:	00 
  401730:	3b 02                	cmp    (%rdx),%eax
  401732:	48 89 d3             	mov    %rdx,%rbx
  401735:	74 29                	je     401760 <do_bgfg+0xf0>
  401737:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  40173e:	48 81 fa e0 77 60 00 	cmp    $0x6077e0,%rdx
  401745:	75 e9                	jne    401730 <do_bgfg+0xc0>
  401747:	48 83 c4 08          	add    $0x8,%rsp
  40174b:	89 c6                	mov    %eax,%esi
  40174d:	bf cb 23 40 00       	mov    $0x4023cb,%edi
  401752:	5b                   	pop    %rbx
  401753:	5d                   	pop    %rbp
  401754:	31 c0                	xor    %eax,%eax
  401756:	e9 25 f3 ff ff       	jmpq   400a80 <printf@plt>
  40175b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401760:	48 85 d2             	test   %rdx,%rdx
  401763:	74 e2                	je     401747 <do_bgfg+0xd7>
  401765:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401769:	0f b6 0d 83 0c 00 00 	movzbl 0xc83(%rip),%ecx        # 4023f3 <__dso_handle+0x413>
  401770:	0f b6 10             	movzbl (%rax),%edx
  401773:	39 ca                	cmp    %ecx,%edx
  401775:	75 59                	jne    4017d0 <do_bgfg+0x160>
  401777:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
  40177b:	3a 0d 73 0c 00 00    	cmp    0xc73(%rip),%cl        # 4023f4 <__dso_handle+0x414>
  401781:	75 4d                	jne    4017d0 <do_bgfg+0x160>
  401783:	0f b6 48 02          	movzbl 0x2(%rax),%ecx
  401787:	3a 0d 68 0c 00 00    	cmp    0xc68(%rip),%cl        # 4023f5 <__dso_handle+0x415>
  40178d:	75 41                	jne    4017d0 <do_bgfg+0x160>
  40178f:	8b 3b                	mov    (%rbx),%edi
  401791:	be 12 00 00 00       	mov    $0x12,%esi
  401796:	f7 df                	neg    %edi
  401798:	e8 83 f3 ff ff       	callq  400b20 <kill@plt>
  40179d:	85 c0                	test   %eax,%eax
  40179f:	0f 88 bb 00 00 00    	js     401860 <do_bgfg+0x1f0>
  4017a5:	c7 43 08 02 00 00 00 	movl   $0x2,0x8(%rbx)
  4017ac:	8b 73 04             	mov    0x4(%rbx),%esi
  4017af:	48 8d 4b 0c          	lea    0xc(%rbx),%rcx
  4017b3:	8b 13                	mov    (%rbx),%edx
  4017b5:	48 83 c4 08          	add    $0x8,%rsp
  4017b9:	bf 06 24 40 00       	mov    $0x402406,%edi
  4017be:	5b                   	pop    %rbx
  4017bf:	5d                   	pop    %rbp
  4017c0:	31 c0                	xor    %eax,%eax
  4017c2:	e9 b9 f2 ff ff       	jmpq   400a80 <printf@plt>
  4017c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4017ce:	00 00 
  4017d0:	0f b6 0d 3c 0c 00 00 	movzbl 0xc3c(%rip),%ecx        # 402413 <__dso_handle+0x433>
  4017d7:	39 ca                	cmp    %ecx,%edx
  4017d9:	74 15                	je     4017f0 <do_bgfg+0x180>
  4017db:	bf 26 24 40 00       	mov    $0x402426,%edi
  4017e0:	e8 ab f2 ff ff       	callq  400a90 <puts@plt>
  4017e5:	31 ff                	xor    %edi,%edi
  4017e7:	e8 b4 f2 ff ff       	callq  400aa0 <exit@plt>
  4017ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4017f0:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4017f4:	3a 15 1a 0c 00 00    	cmp    0xc1a(%rip),%dl        # 402414 <__dso_handle+0x434>
  4017fa:	75 df                	jne    4017db <do_bgfg+0x16b>
  4017fc:	0f b6 40 02          	movzbl 0x2(%rax),%eax
  401800:	3a 05 0f 0c 00 00    	cmp    0xc0f(%rip),%al        # 402415 <__dso_handle+0x435>
  401806:	75 d3                	jne    4017db <do_bgfg+0x16b>
  401808:	8b 3b                	mov    (%rbx),%edi
  40180a:	be 12 00 00 00       	mov    $0x12,%esi
  40180f:	f7 df                	neg    %edi
  401811:	e8 0a f3 ff ff       	callq  400b20 <kill@plt>
  401816:	85 c0                	test   %eax,%eax
  401818:	78 26                	js     401840 <do_bgfg+0x1d0>
  40181a:	c7 43 08 01 00 00 00 	movl   $0x1,0x8(%rbx)
  401821:	8b 3b                	mov    (%rbx),%edi
  401823:	48 83 c4 08          	add    $0x8,%rsp
  401827:	5b                   	pop    %rbx
  401828:	5d                   	pop    %rbp
  401829:	e9 c2 fd ff ff       	jmpq   4015f0 <waitfg>
  40182e:	66 90                	xchg   %ax,%ax
  401830:	48 85 d2             	test   %rdx,%rdx
  401833:	0f 85 2c ff ff ff    	jne    401765 <do_bgfg+0xf5>
  401839:	e9 be fe ff ff       	jmpq   4016fc <do_bgfg+0x8c>
  40183e:	66 90                	xchg   %ax,%ax
  401840:	bf 16 24 40 00       	mov    $0x402416,%edi
  401845:	e8 46 f7 ff ff       	callq  400f90 <unix_error>
  40184a:	eb ce                	jmp    40181a <do_bgfg+0x1aa>
  40184c:	0f 1f 40 00          	nopl   0x0(%rax)
  401850:	48 8b 37             	mov    (%rdi),%rsi
  401853:	bf d8 21 40 00       	mov    $0x4021d8,%edi
  401858:	e9 4d fe ff ff       	jmpq   4016aa <do_bgfg+0x3a>
  40185d:	0f 1f 00             	nopl   (%rax)
  401860:	bf f6 23 40 00       	mov    $0x4023f6,%edi
  401865:	e8 26 f7 ff ff       	callq  400f90 <unix_error>
  40186a:	e9 36 ff ff ff       	jmpq   4017a5 <do_bgfg+0x135>
  40186f:	90                   	nop

0000000000401870 <builtin_cmd>:
  401870:	48 83 ec 08          	sub    $0x8,%rsp
  401874:	48 8b 07             	mov    (%rdi),%rax
  401877:	48 89 fa             	mov    %rdi,%rdx
  40187a:	b9 05 00 00 00       	mov    $0x5,%ecx
  40187f:	bf 3e 24 40 00       	mov    $0x40243e,%edi
  401884:	48 89 c6             	mov    %rax,%rsi
  401887:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  401889:	0f 84 b8 00 00 00    	je     401947 <builtin_cmd+0xd7>
  40188f:	bf cc 22 40 00       	mov    $0x4022cc,%edi
  401894:	b9 05 00 00 00       	mov    $0x5,%ecx
  401899:	48 89 c6             	mov    %rax,%rsi
  40189c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40189e:	0f 84 7c 00 00 00    	je     401920 <builtin_cmd+0xb0>
  4018a4:	0f b6 08             	movzbl (%rax),%ecx
  4018a7:	0f b6 35 45 0b 00 00 	movzbl 0xb45(%rip),%esi        # 4023f3 <__dso_handle+0x413>
  4018ae:	39 f1                	cmp    %esi,%ecx
  4018b0:	75 2e                	jne    4018e0 <builtin_cmd+0x70>
  4018b2:	0f b6 70 01          	movzbl 0x1(%rax),%esi
  4018b6:	40 3a 35 37 0b 00 00 	cmp    0xb37(%rip),%sil        # 4023f4 <__dso_handle+0x414>
  4018bd:	75 21                	jne    4018e0 <builtin_cmd+0x70>
  4018bf:	0f b6 70 02          	movzbl 0x2(%rax),%esi
  4018c3:	40 3a 35 2b 0b 00 00 	cmp    0xb2b(%rip),%sil        # 4023f5 <__dso_handle+0x415>
  4018ca:	75 14                	jne    4018e0 <builtin_cmd+0x70>
  4018cc:	48 89 d7             	mov    %rdx,%rdi
  4018cf:	e8 9c fd ff ff       	callq  401670 <do_bgfg>
  4018d4:	b8 01 00 00 00       	mov    $0x1,%eax
  4018d9:	48 83 c4 08          	add    $0x8,%rsp
  4018dd:	c3                   	retq   
  4018de:	66 90                	xchg   %ax,%ax
  4018e0:	0f b6 35 2c 0b 00 00 	movzbl 0xb2c(%rip),%esi        # 402413 <__dso_handle+0x433>
  4018e7:	39 f1                	cmp    %esi,%ecx
  4018e9:	75 1d                	jne    401908 <builtin_cmd+0x98>
  4018eb:	0f b6 70 01          	movzbl 0x1(%rax),%esi
  4018ef:	40 3a 35 1e 0b 00 00 	cmp    0xb1e(%rip),%sil        # 402414 <__dso_handle+0x434>
  4018f6:	75 10                	jne    401908 <builtin_cmd+0x98>
  4018f8:	0f b6 70 02          	movzbl 0x2(%rax),%esi
  4018fc:	40 3a 35 12 0b 00 00 	cmp    0xb12(%rip),%sil        # 402415 <__dso_handle+0x435>
  401903:	74 c7                	je     4018cc <builtin_cmd+0x5c>
  401905:	0f 1f 00             	nopl   (%rax)
  401908:	0f b6 15 34 0b 00 00 	movzbl 0xb34(%rip),%edx        # 402443 <__dso_handle+0x463>
  40190f:	29 d1                	sub    %edx,%ecx
  401911:	74 25                	je     401938 <builtin_cmd+0xc8>
  401913:	31 c0                	xor    %eax,%eax
  401915:	85 c9                	test   %ecx,%ecx
  401917:	0f 94 c0             	sete   %al
  40191a:	48 83 c4 08          	add    $0x8,%rsp
  40191e:	c3                   	retq   
  40191f:	90                   	nop
  401920:	bf 20 37 60 00       	mov    $0x603720,%edi
  401925:	e8 26 f7 ff ff       	callq  401050 <listjobs>
  40192a:	b8 01 00 00 00       	mov    $0x1,%eax
  40192f:	48 83 c4 08          	add    $0x8,%rsp
  401933:	c3                   	retq   
  401934:	0f 1f 40 00          	nopl   0x0(%rax)
  401938:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
  40193c:	0f b6 05 01 0b 00 00 	movzbl 0xb01(%rip),%eax        # 402444 <__dso_handle+0x464>
  401943:	29 c1                	sub    %eax,%ecx
  401945:	eb cc                	jmp    401913 <builtin_cmd+0xa3>
  401947:	31 ff                	xor    %edi,%edi
  401949:	e8 52 f1 ff ff       	callq  400aa0 <exit@plt>
  40194e:	66 90                	xchg   %ax,%ax

0000000000401950 <parseline>:
  401950:	41 56                	push   %r14
  401952:	49 89 f6             	mov    %rsi,%r14
  401955:	48 89 fe             	mov    %rdi,%rsi
  401958:	bf 20 33 60 00       	mov    $0x603320,%edi
  40195d:	41 55                	push   %r13
  40195f:	41 54                	push   %r12
  401961:	55                   	push   %rbp
  401962:	53                   	push   %rbx
  401963:	e8 58 f2 ff ff       	callq  400bc0 <strcpy@plt>
  401968:	ba 20 33 60 00       	mov    $0x603320,%edx
  40196d:	8b 0a                	mov    (%rdx),%ecx
  40196f:	48 83 c2 04          	add    $0x4,%rdx
  401973:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  401979:	f7 d1                	not    %ecx
  40197b:	21 c8                	and    %ecx,%eax
  40197d:	25 80 80 80 80       	and    $0x80808080,%eax
  401982:	74 e9                	je     40196d <parseline+0x1d>
  401984:	89 c1                	mov    %eax,%ecx
  401986:	bb 20 33 60 00       	mov    $0x603320,%ebx
  40198b:	c1 e9 10             	shr    $0x10,%ecx
  40198e:	a9 80 80 00 00       	test   $0x8080,%eax
  401993:	0f 44 c1             	cmove  %ecx,%eax
  401996:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  40199a:	48 0f 44 d1          	cmove  %rcx,%rdx
  40199e:	00 c0                	add    %al,%al
  4019a0:	48 83 da 03          	sbb    $0x3,%rdx
  4019a4:	48 81 ea 20 33 60 00 	sub    $0x603320,%rdx
  4019ab:	c6 82 1f 33 60 00 20 	movb   $0x20,0x60331f(%rdx)
  4019b2:	0f b6 05 67 19 20 00 	movzbl 0x201967(%rip),%eax        # 603320 <array.4535>
  4019b9:	3c 20                	cmp    $0x20,%al
  4019bb:	75 0e                	jne    4019cb <parseline+0x7b>
  4019bd:	0f 1f 00             	nopl   (%rax)
  4019c0:	48 83 c3 01          	add    $0x1,%rbx
  4019c4:	0f b6 03             	movzbl (%rbx),%eax
  4019c7:	3c 20                	cmp    $0x20,%al
  4019c9:	74 f5                	je     4019c0 <parseline+0x70>
  4019cb:	3c 27                	cmp    $0x27,%al
  4019cd:	0f 84 a0 00 00 00    	je     401a73 <parseline+0x123>
  4019d3:	be 20 00 00 00       	mov    $0x20,%esi
  4019d8:	48 89 df             	mov    %rbx,%rdi
  4019db:	45 31 e4             	xor    %r12d,%r12d
  4019de:	e8 9d f1 ff ff       	callq  400b80 <strchr@plt>
  4019e3:	48 85 c0             	test   %rax,%rax
  4019e6:	4c 89 f5             	mov    %r14,%rbp
  4019e9:	0f 84 a4 00 00 00    	je     401a93 <parseline+0x143>
  4019ef:	90                   	nop
  4019f0:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
  4019f4:	c6 00 00             	movb   $0x0,(%rax)
  4019f7:	48 8d 58 01          	lea    0x1(%rax),%rbx
  4019fb:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  4019ff:	41 83 c4 01          	add    $0x1,%r12d
  401a03:	49 89 ed             	mov    %rbp,%r13
  401a06:	3c 20                	cmp    $0x20,%al
  401a08:	75 11                	jne    401a1b <parseline+0xcb>
  401a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a10:	48 83 c3 01          	add    $0x1,%rbx
  401a14:	0f b6 03             	movzbl (%rbx),%eax
  401a17:	3c 20                	cmp    $0x20,%al
  401a19:	74 f5                	je     401a10 <parseline+0xc0>
  401a1b:	3c 27                	cmp    $0x27,%al
  401a1d:	74 41                	je     401a60 <parseline+0x110>
  401a1f:	be 20 00 00 00       	mov    $0x20,%esi
  401a24:	48 89 df             	mov    %rbx,%rdi
  401a27:	e8 54 f1 ff ff       	callq  400b80 <strchr@plt>
  401a2c:	48 83 c5 08          	add    $0x8,%rbp
  401a30:	48 85 c0             	test   %rax,%rax
  401a33:	75 bb                	jne    4019f0 <parseline+0xa0>
  401a35:	4d 63 e4             	movslq %r12d,%r12
  401a38:	4b 8b 54 e6 f8       	mov    -0x8(%r14,%r12,8),%rdx
  401a3d:	4b c7 04 e6 00 00 00 	movq   $0x0,(%r14,%r12,8)
  401a44:	00 
  401a45:	80 3a 26             	cmpb   $0x26,(%rdx)
  401a48:	75 0a                	jne    401a54 <parseline+0x104>
  401a4a:	49 c7 45 00 00 00 00 	movq   $0x0,0x0(%r13)
  401a51:	00 
  401a52:	b0 01                	mov    $0x1,%al
  401a54:	5b                   	pop    %rbx
  401a55:	5d                   	pop    %rbp
  401a56:	41 5c                	pop    %r12
  401a58:	41 5d                	pop    %r13
  401a5a:	41 5e                	pop    %r14
  401a5c:	c3                   	retq   
  401a5d:	0f 1f 00             	nopl   (%rax)
  401a60:	48 83 c3 01          	add    $0x1,%rbx
  401a64:	be 27 00 00 00       	mov    $0x27,%esi
  401a69:	48 89 df             	mov    %rbx,%rdi
  401a6c:	e8 0f f1 ff ff       	callq  400b80 <strchr@plt>
  401a71:	eb b9                	jmp    401a2c <parseline+0xdc>
  401a73:	48 83 c3 01          	add    $0x1,%rbx
  401a77:	be 27 00 00 00       	mov    $0x27,%esi
  401a7c:	45 31 e4             	xor    %r12d,%r12d
  401a7f:	48 89 df             	mov    %rbx,%rdi
  401a82:	4c 89 f5             	mov    %r14,%rbp
  401a85:	e8 f6 f0 ff ff       	callq  400b80 <strchr@plt>
  401a8a:	48 85 c0             	test   %rax,%rax
  401a8d:	0f 85 5d ff ff ff    	jne    4019f0 <parseline+0xa0>
  401a93:	49 c7 06 00 00 00 00 	movq   $0x0,(%r14)
  401a9a:	b8 01 00 00 00       	mov    $0x1,%eax
  401a9f:	eb b3                	jmp    401a54 <parseline+0x104>
  401aa1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401aa8:	0f 1f 84 00 00 00 00 
  401aaf:	00 

0000000000401ab0 <eval>:
  401ab0:	48 89 6c 24 e0       	mov    %rbp,-0x20(%rsp)
  401ab5:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  401aba:	48 89 fd             	mov    %rdi,%rbp
  401abd:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
  401ac2:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  401ac7:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  401acc:	48 81 ec a8 04 00 00 	sub    $0x4a8,%rsp
  401ad3:	48 89 e6             	mov    %rsp,%rsi
  401ad6:	e8 75 fe ff ff       	callq  401950 <parseline>
  401adb:	48 83 3c 24 00       	cmpq   $0x0,(%rsp)
  401ae0:	41 89 c5             	mov    %eax,%r13d
  401ae3:	74 0c                	je     401af1 <eval+0x41>
  401ae5:	48 89 e7             	mov    %rsp,%rdi
  401ae8:	e8 83 fd ff ff       	callq  401870 <builtin_cmd>
  401aed:	85 c0                	test   %eax,%eax
  401aef:	74 37                	je     401b28 <eval+0x78>
  401af1:	48 8b 9c 24 80 04 00 	mov    0x480(%rsp),%rbx
  401af8:	00 
  401af9:	48 8b ac 24 88 04 00 	mov    0x488(%rsp),%rbp
  401b00:	00 
  401b01:	4c 8b a4 24 90 04 00 	mov    0x490(%rsp),%r12
  401b08:	00 
  401b09:	4c 8b ac 24 98 04 00 	mov    0x498(%rsp),%r13
  401b10:	00 
  401b11:	4c 8b b4 24 a0 04 00 	mov    0x4a0(%rsp),%r14
  401b18:	00 
  401b19:	48 81 c4 a8 04 00 00 	add    $0x4a8,%rsp
  401b20:	c3                   	retq   
  401b21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401b28:	4c 8d a4 24 00 04 00 	lea    0x400(%rsp),%r12
  401b2f:	00 
  401b30:	4c 89 e7             	mov    %r12,%rdi
  401b33:	e8 b8 f0 ff ff       	callq  400bf0 <sigemptyset@plt>
  401b38:	85 c0                	test   %eax,%eax
  401b3a:	0f 88 c8 01 00 00    	js     401d08 <eval+0x258>
  401b40:	be 11 00 00 00       	mov    $0x11,%esi
  401b45:	4c 89 e7             	mov    %r12,%rdi
  401b48:	e8 63 f0 ff ff       	callq  400bb0 <sigaddset@plt>
  401b4d:	85 c0                	test   %eax,%eax
  401b4f:	0f 85 5b 01 00 00    	jne    401cb0 <eval+0x200>
  401b55:	be 02 00 00 00       	mov    $0x2,%esi
  401b5a:	4c 89 e7             	mov    %r12,%rdi
  401b5d:	e8 4e f0 ff ff       	callq  400bb0 <sigaddset@plt>
  401b62:	85 c0                	test   %eax,%eax
  401b64:	0f 85 36 01 00 00    	jne    401ca0 <eval+0x1f0>
  401b6a:	be 14 00 00 00       	mov    $0x14,%esi
  401b6f:	4c 89 e7             	mov    %r12,%rdi
  401b72:	e8 39 f0 ff ff       	callq  400bb0 <sigaddset@plt>
  401b77:	85 c0                	test   %eax,%eax
  401b79:	0f 85 09 01 00 00    	jne    401c88 <eval+0x1d8>
  401b7f:	31 d2                	xor    %edx,%edx
  401b81:	31 ff                	xor    %edi,%edi
  401b83:	4c 89 e6             	mov    %r12,%rsi
  401b86:	e8 b5 ef ff ff       	callq  400b40 <sigprocmask@plt>
  401b8b:	85 c0                	test   %eax,%eax
  401b8d:	0f 88 8d 01 00 00    	js     401d20 <eval+0x270>
  401b93:	e8 48 f0 ff ff       	callq  400be0 <fork@plt>
  401b98:	83 f8 00             	cmp    $0x0,%eax
  401b9b:	89 c3                	mov    %eax,%ebx
  401b9d:	0f 8c 8d 01 00 00    	jl     401d30 <eval+0x280>
  401ba3:	74 7b                	je     401c20 <eval+0x170>
  401ba5:	41 83 fd 01          	cmp    $0x1,%r13d
  401ba9:	0f 84 11 01 00 00    	je     401cc0 <eval+0x210>
  401baf:	48 89 e9             	mov    %rbp,%rcx
  401bb2:	ba 01 00 00 00       	mov    $0x1,%edx
  401bb7:	89 de                	mov    %ebx,%esi
  401bb9:	bf 20 37 60 00       	mov    $0x603720,%edi
  401bbe:	e8 3d f5 ff ff       	callq  401100 <addjob>
  401bc3:	31 d2                	xor    %edx,%edx
  401bc5:	4c 89 e6             	mov    %r12,%rsi
  401bc8:	bf 01 00 00 00       	mov    $0x1,%edi
  401bcd:	e8 6e ef ff ff       	callq  400b40 <sigprocmask@plt>
  401bd2:	45 85 ed             	test   %r13d,%r13d
  401bd5:	0f 84 9d 00 00 00    	je     401c78 <eval+0x1c8>
  401bdb:	85 db                	test   %ebx,%ebx
  401bdd:	7e 27                	jle    401c06 <eval+0x156>
  401bdf:	b8 20 37 60 00       	mov    $0x603720,%eax
  401be4:	31 d2                	xor    %edx,%edx
  401be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bed:	00 00 00 
  401bf0:	3b 18                	cmp    (%rax),%ebx
  401bf2:	0f 84 f8 00 00 00    	je     401cf0 <eval+0x240>
  401bf8:	83 c2 01             	add    $0x1,%edx
  401bfb:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401c01:	83 fa 10             	cmp    $0x10,%edx
  401c04:	75 ea                	jne    401bf0 <eval+0x140>
  401c06:	31 f6                	xor    %esi,%esi
  401c08:	48 89 e9             	mov    %rbp,%rcx
  401c0b:	89 da                	mov    %ebx,%edx
  401c0d:	bf 06 24 40 00       	mov    $0x402406,%edi
  401c12:	31 c0                	xor    %eax,%eax
  401c14:	e8 67 ee ff ff       	callq  400a80 <printf@plt>
  401c19:	e9 d3 fe ff ff       	jmpq   401af1 <eval+0x41>
  401c1e:	66 90                	xchg   %ax,%ax
  401c20:	31 d2                	xor    %edx,%edx
  401c22:	4c 89 e6             	mov    %r12,%rsi
  401c25:	bf 01 00 00 00       	mov    $0x1,%edi
  401c2a:	e8 11 ef ff ff       	callq  400b40 <sigprocmask@plt>
  401c2f:	31 f6                	xor    %esi,%esi
  401c31:	31 ff                	xor    %edi,%edi
  401c33:	e8 98 ee ff ff       	callq  400ad0 <setpgid@plt>
  401c38:	85 c0                	test   %eax,%eax
  401c3a:	0f 88 ff 00 00 00    	js     401d3f <eval+0x28f>
  401c40:	48 8b 15 79 16 20 00 	mov    0x201679(%rip),%rdx        # 6032c0 <__bss_start>
  401c47:	48 8b 3c 24          	mov    (%rsp),%rdi
  401c4b:	48 89 e6             	mov    %rsp,%rsi
  401c4e:	e8 1d ef ff ff       	callq  400b70 <execve@plt>
  401c53:	85 c0                	test   %eax,%eax
  401c55:	0f 89 4a ff ff ff    	jns    401ba5 <eval+0xf5>
  401c5b:	48 8b 34 24          	mov    (%rsp),%rsi
  401c5f:	bf 92 24 40 00       	mov    $0x402492,%edi
  401c64:	31 c0                	xor    %eax,%eax
  401c66:	e8 15 ee ff ff       	callq  400a80 <printf@plt>
  401c6b:	31 ff                	xor    %edi,%edi
  401c6d:	e8 2e ee ff ff       	callq  400aa0 <exit@plt>
  401c72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401c78:	89 df                	mov    %ebx,%edi
  401c7a:	e8 71 f9 ff ff       	callq  4015f0 <waitfg>
  401c7f:	e9 6d fe ff ff       	jmpq   401af1 <eval+0x41>
  401c84:	0f 1f 40 00          	nopl   0x0(%rax)
  401c88:	bf 57 24 40 00       	mov    $0x402457,%edi
  401c8d:	e8 fe f2 ff ff       	callq  400f90 <unix_error>
  401c92:	e9 e8 fe ff ff       	jmpq   401b7f <eval+0xcf>
  401c97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401c9e:	00 00 
  401ca0:	bf 57 24 40 00       	mov    $0x402457,%edi
  401ca5:	e8 e6 f2 ff ff       	callq  400f90 <unix_error>
  401caa:	e9 bb fe ff ff       	jmpq   401b6a <eval+0xba>
  401caf:	90                   	nop
  401cb0:	bf 57 24 40 00       	mov    $0x402457,%edi
  401cb5:	e8 d6 f2 ff ff       	callq  400f90 <unix_error>
  401cba:	e9 96 fe ff ff       	jmpq   401b55 <eval+0xa5>
  401cbf:	90                   	nop
  401cc0:	89 de                	mov    %ebx,%esi
  401cc2:	48 89 e9             	mov    %rbp,%rcx
  401cc5:	ba 02 00 00 00       	mov    $0x2,%edx
  401cca:	bf 20 37 60 00       	mov    $0x603720,%edi
  401ccf:	e8 2c f4 ff ff       	callq  401100 <addjob>
  401cd4:	31 d2                	xor    %edx,%edx
  401cd6:	4c 89 e6             	mov    %r12,%rsi
  401cd9:	bf 01 00 00 00       	mov    $0x1,%edi
  401cde:	e8 5d ee ff ff       	callq  400b40 <sigprocmask@plt>
  401ce3:	e9 f3 fe ff ff       	jmpq   401bdb <eval+0x12b>
  401ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401cef:	00 
  401cf0:	48 63 d2             	movslq %edx,%rdx
  401cf3:	48 69 d2 0c 04 00 00 	imul   $0x40c,%rdx,%rdx
  401cfa:	8b b2 24 37 60 00    	mov    0x603724(%rdx),%esi
  401d00:	e9 03 ff ff ff       	jmpq   401c08 <eval+0x158>
  401d05:	0f 1f 00             	nopl   (%rax)
  401d08:	bf 45 24 40 00       	mov    $0x402445,%edi
  401d0d:	e8 7e f2 ff ff       	callq  400f90 <unix_error>
  401d12:	e9 29 fe ff ff       	jmpq   401b40 <eval+0x90>
  401d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401d1e:	00 00 
  401d20:	bf 67 24 40 00       	mov    $0x402467,%edi
  401d25:	e8 66 f2 ff ff       	callq  400f90 <unix_error>
  401d2a:	e9 64 fe ff ff       	jmpq   401b93 <eval+0xe3>
  401d2f:	90                   	nop
  401d30:	bf 79 24 40 00       	mov    $0x402479,%edi
  401d35:	e8 56 f2 ff ff       	callq  400f90 <unix_error>
  401d3a:	e9 66 fe ff ff       	jmpq   401ba5 <eval+0xf5>
  401d3f:	bf 84 24 40 00       	mov    $0x402484,%edi
  401d44:	e8 47 f2 ff ff       	callq  400f90 <unix_error>
  401d49:	e9 f2 fe ff ff       	jmpq   401c40 <eval+0x190>
  401d4e:	66 90                	xchg   %ax,%ax

0000000000401d50 <main>:
  401d50:	41 54                	push   %r12
  401d52:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401d58:	55                   	push   %rbp
  401d59:	89 fd                	mov    %edi,%ebp
  401d5b:	bf 01 00 00 00       	mov    $0x1,%edi
  401d60:	53                   	push   %rbx
  401d61:	48 89 f3             	mov    %rsi,%rbx
  401d64:	be 02 00 00 00       	mov    $0x2,%esi
  401d69:	48 81 ec 00 04 00 00 	sub    $0x400,%rsp
  401d70:	e8 fb ec ff ff       	callq  400a70 <dup2@plt>
  401d75:	0f 1f 00             	nopl   (%rax)
  401d78:	ba a9 24 40 00       	mov    $0x4024a9,%edx
  401d7d:	48 89 de             	mov    %rbx,%rsi
  401d80:	89 ef                	mov    %ebp,%edi
  401d82:	e8 29 ed ff ff       	callq  400ab0 <getopt@plt>
  401d87:	3c ff                	cmp    $0xff,%al
  401d89:	74 2d                	je     401db8 <main+0x68>
  401d8b:	3c 70                	cmp    $0x70,%al
  401d8d:	74 11                	je     401da0 <main+0x50>
  401d8f:	3c 76                	cmp    $0x76,%al
  401d91:	74 15                	je     401da8 <main+0x58>
  401d93:	e8 88 f1 ff ff       	callq  400f20 <usage>
  401d98:	eb de                	jmp    401d78 <main+0x28>
  401d9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401da0:	45 31 e4             	xor    %r12d,%r12d
  401da3:	eb d3                	jmp    401d78 <main+0x28>
  401da5:	0f 1f 00             	nopl   (%rax)
  401da8:	c7 05 4e 15 20 00 01 	movl   $0x1,0x20154e(%rip)        # 603300 <verbose>
  401daf:	00 00 00 
  401db2:	eb c4                	jmp    401d78 <main+0x28>
  401db4:	0f 1f 40 00          	nopl   0x0(%rax)
  401db8:	be 90 12 40 00       	mov    $0x401290,%esi
  401dbd:	bf 02 00 00 00       	mov    $0x2,%edi
  401dc2:	e8 09 f2 ff ff       	callq  400fd0 <Signal>
  401dc7:	be a0 11 40 00       	mov    $0x4011a0,%esi
  401dcc:	bf 14 00 00 00       	mov    $0x14,%edi
  401dd1:	e8 fa f1 ff ff       	callq  400fd0 <Signal>
  401dd6:	be 40 13 40 00       	mov    $0x401340,%esi
  401ddb:	bf 11 00 00 00       	mov    $0x11,%edi
  401de0:	e8 eb f1 ff ff       	callq  400fd0 <Signal>
  401de5:	be 00 0f 40 00       	mov    $0x400f00,%esi
  401dea:	bf 03 00 00 00       	mov    $0x3,%edi
  401def:	e8 dc f1 ff ff       	callq  400fd0 <Signal>
  401df4:	31 c0                	xor    %eax,%eax
  401df6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401dfd:	00 00 00 
  401e00:	c7 80 20 37 60 00 00 	movl   $0x0,0x603720(%rax)
  401e07:	00 00 00 
  401e0a:	c7 80 24 37 60 00 00 	movl   $0x0,0x603724(%rax)
  401e11:	00 00 00 
  401e14:	c7 80 28 37 60 00 00 	movl   $0x0,0x603728(%rax)
  401e1b:	00 00 00 
  401e1e:	c6 80 2c 37 60 00 00 	movb   $0x0,0x60372c(%rax)
  401e25:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401e2b:	48 3d c0 40 00 00    	cmp    $0x40c0,%rax
  401e31:	75 cd                	jne    401e00 <main+0xb0>
  401e33:	45 85 e4             	test   %r12d,%r12d
  401e36:	75 56                	jne    401e8e <main+0x13e>
  401e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401e3f:	00 
  401e40:	48 8b 15 81 14 20 00 	mov    0x201481(%rip),%rdx        # 6032c8 <stdin@@GLIBC_2.2.5>
  401e47:	be 00 04 00 00       	mov    $0x400,%esi
  401e4c:	48 89 e7             	mov    %rsp,%rdi
  401e4f:	e8 8c ec ff ff       	callq  400ae0 <fgets@plt>
  401e54:	48 85 c0             	test   %rax,%rax
  401e57:	74 6f                	je     401ec8 <main+0x178>
  401e59:	48 8b 3d 68 14 20 00 	mov    0x201468(%rip),%rdi        # 6032c8 <stdin@@GLIBC_2.2.5>
  401e60:	e8 6b ed ff ff       	callq  400bd0 <feof@plt>
  401e65:	85 c0                	test   %eax,%eax
  401e67:	75 47                	jne    401eb0 <main+0x160>
  401e69:	48 89 e7             	mov    %rsp,%rdi
  401e6c:	e8 3f fc ff ff       	callq  401ab0 <eval>
  401e71:	48 8b 3d 58 14 20 00 	mov    0x201458(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  401e78:	e8 93 ed ff ff       	callq  400c10 <fflush@plt>
  401e7d:	48 8b 3d 4c 14 20 00 	mov    0x20144c(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  401e84:	e8 87 ed ff ff       	callq  400c10 <fflush@plt>
  401e89:	45 85 e4             	test   %r12d,%r12d
  401e8c:	74 b2                	je     401e40 <main+0xf0>
  401e8e:	be b4 32 60 00       	mov    $0x6032b4,%esi
  401e93:	bf 10 24 40 00       	mov    $0x402410,%edi
  401e98:	31 c0                	xor    %eax,%eax
  401e9a:	e8 e1 eb ff ff       	callq  400a80 <printf@plt>
  401e9f:	48 8b 3d 2a 14 20 00 	mov    0x20142a(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  401ea6:	e8 65 ed ff ff       	callq  400c10 <fflush@plt>
  401eab:	eb 93                	jmp    401e40 <main+0xf0>
  401ead:	0f 1f 00             	nopl   (%rax)
  401eb0:	48 8b 3d 19 14 20 00 	mov    0x201419(%rip),%rdi        # 6032d0 <stdout@@GLIBC_2.2.5>
  401eb7:	e8 54 ed ff ff       	callq  400c10 <fflush@plt>
  401ebc:	31 ff                	xor    %edi,%edi
  401ebe:	e8 dd eb ff ff       	callq  400aa0 <exit@plt>
  401ec3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ec8:	48 8b 3d f9 13 20 00 	mov    0x2013f9(%rip),%rdi        # 6032c8 <stdin@@GLIBC_2.2.5>
  401ecf:	e8 1c ec ff ff       	callq  400af0 <ferror@plt>
  401ed4:	85 c0                	test   %eax,%eax
  401ed6:	74 81                	je     401e59 <main+0x109>
  401ed8:	bf ad 24 40 00       	mov    $0x4024ad,%edi
  401edd:	e8 7e f0 ff ff       	callq  400f60 <app_error>
  401ee2:	e9 72 ff ff ff       	jmpq   401e59 <main+0x109>
  401ee7:	90                   	nop
  401ee8:	90                   	nop
  401ee9:	90                   	nop
  401eea:	90                   	nop
  401eeb:	90                   	nop
  401eec:	90                   	nop
  401eed:	90                   	nop
  401eee:	90                   	nop
  401eef:	90                   	nop

0000000000401ef0 <__libc_csu_fini>:
  401ef0:	f3 c3                	repz retq 
  401ef2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401ef9:	1f 84 00 00 00 00 00 

0000000000401f00 <__libc_csu_init>:
  401f00:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  401f05:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  401f0a:	48 8d 2d ef 10 20 00 	lea    0x2010ef(%rip),%rbp        # 603000 <__CTOR_LIST__>
  401f11:	4c 8d 25 e8 10 20 00 	lea    0x2010e8(%rip),%r12        # 603000 <__CTOR_LIST__>
  401f18:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  401f1d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  401f22:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  401f27:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  401f2c:	48 83 ec 38          	sub    $0x38,%rsp
  401f30:	4c 29 e5             	sub    %r12,%rbp
  401f33:	41 89 fd             	mov    %edi,%r13d
  401f36:	49 89 f6             	mov    %rsi,%r14
  401f39:	48 c1 fd 03          	sar    $0x3,%rbp
  401f3d:	49 89 d7             	mov    %rdx,%r15
  401f40:	e8 03 eb ff ff       	callq  400a48 <_init>
  401f45:	48 85 ed             	test   %rbp,%rbp
  401f48:	74 1c                	je     401f66 <__libc_csu_init+0x66>
  401f4a:	31 db                	xor    %ebx,%ebx
  401f4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401f50:	4c 89 fa             	mov    %r15,%rdx
  401f53:	4c 89 f6             	mov    %r14,%rsi
  401f56:	44 89 ef             	mov    %r13d,%edi
  401f59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  401f5d:	48 83 c3 01          	add    $0x1,%rbx
  401f61:	48 39 eb             	cmp    %rbp,%rbx
  401f64:	72 ea                	jb     401f50 <__libc_csu_init+0x50>
  401f66:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  401f6b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  401f70:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  401f75:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  401f7a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  401f7f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  401f84:	48 83 c4 38          	add    $0x38,%rsp
  401f88:	c3                   	retq   
  401f89:	90                   	nop
  401f8a:	90                   	nop
  401f8b:	90                   	nop
  401f8c:	90                   	nop
  401f8d:	90                   	nop
  401f8e:	90                   	nop
  401f8f:	90                   	nop

0000000000401f90 <__do_global_ctors_aux>:
  401f90:	55                   	push   %rbp
  401f91:	48 89 e5             	mov    %rsp,%rbp
  401f94:	53                   	push   %rbx
  401f95:	48 83 ec 08          	sub    $0x8,%rsp
  401f99:	48 8b 05 60 10 20 00 	mov    0x201060(%rip),%rax        # 603000 <__CTOR_LIST__>
  401fa0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401fa4:	74 19                	je     401fbf <__do_global_ctors_aux+0x2f>
  401fa6:	bb 00 30 60 00       	mov    $0x603000,%ebx
  401fab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401fb0:	48 83 eb 08          	sub    $0x8,%rbx
  401fb4:	ff d0                	callq  *%rax
  401fb6:	48 8b 03             	mov    (%rbx),%rax
  401fb9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401fbd:	75 f1                	jne    401fb0 <__do_global_ctors_aux+0x20>
  401fbf:	48 83 c4 08          	add    $0x8,%rsp
  401fc3:	5b                   	pop    %rbx
  401fc4:	c9                   	leaveq 
  401fc5:	c3                   	retq   
  401fc6:	90                   	nop
  401fc7:	90                   	nop

Disassembly of section .fini:

0000000000401fc8 <_fini>:
  401fc8:	48 83 ec 08          	sub    $0x8,%rsp
  401fcc:	e8 9f ec ff ff       	callq  400c70 <__do_global_dtors_aux>
  401fd1:	48 83 c4 08          	add    $0x8,%rsp
  401fd5:	c3                   	retq   
