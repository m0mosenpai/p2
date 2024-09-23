
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 09 14 00 00       	push   $0x1409
      2b:	e8 a3 0e 00 00       	call   ed3 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d a2 1a 00 00 20 	cmpb   $0x20,0x1aa2
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 36 0e 00 00       	call   e8b <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 34 0e 00 00       	call   e9b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 68 13 00 00       	push   $0x1368
      6f:	6a 02                	push   $0x2
      71:	e8 8a 0f 00 00       	call   1000 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 a0 1a 00 00       	push   $0x1aa0
      82:	e8 89 0c 00 00       	call   d10 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 a0 1a 00 00       	push   $0x1aa0
      90:	e8 db 0c 00 00       	call   d70 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 a0 1a 00 00 	movzbl 0x1aa0,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d a1 1a 00 00 64 	cmpb   $0x64,0x1aa1
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 dc 0d 00 00       	call   e93 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 fb 0d 00 00       	call   ebb <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 a0 1a 00 00       	push   $0x1aa0
      cd:	e8 fe 0a 00 00       	call   bd0 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 d6 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 a0 1a 00 00       	push   $0x1aa0
      e2:	e8 f9 0b 00 00       	call   ce0 <strlen>
      e7:	c6 80 9f 1a 00 00 00 	movb   $0x0,0x1a9f(%eax)
      if(chdir(buf+3) < 0)
      ee:	c7 04 24 a3 1a 00 00 	movl   $0x1aa3,(%esp)
      f5:	e8 09 0e 00 00       	call   f03 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 a3 1a 00 00       	push   $0x1aa3
     10b:	68 11 14 00 00       	push   $0x1411
     110:	6a 02                	push   $0x2
     112:	e8 e9 0e 00 00       	call   1000 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 6b 13 00 00       	push   $0x136b
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 5d 08             	mov    0x8(%ebp),%ebx
     138:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 68 13 00 00       	push   $0x1368
     143:	6a 02                	push   $0x2
     145:	e8 b6 0e 00 00       	call   1000 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 ba 0b 00 00       	call   d10 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 11 0c 00 00       	call   d70 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 05 14 00 00       	push   $0x1405
     17e:	6a 02                	push   $0x2
     180:	e8 7b 0e 00 00       	call   1000 <printf>
  exit();
     185:	e8 09 0d 00 00       	call   e93 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 f0 0c 00 00       	call   e8b <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave
     1a1:	c3                   	ret
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 6b 13 00 00       	push   $0x136b
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 14             	sub    $0x14,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 3a                	je     1f8 <runcmd+0x48>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 e6 00 00 00    	ja     2ad <runcmd+0xfd>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 28 14 00 00 	jmp    *0x1428(,%eax,4)
    if(ecmd->argv[0] == 0)
     1d0:	8b 43 04             	mov    0x4(%ebx),%eax
     1d3:	85 c0                	test   %eax,%eax
     1d5:	74 21                	je     1f8 <runcmd+0x48>
    exec(ecmd->argv[0], ecmd->argv);
     1d7:	8d 53 04             	lea    0x4(%ebx),%edx
     1da:	51                   	push   %ecx
     1db:	51                   	push   %ecx
     1dc:	52                   	push   %edx
     1dd:	50                   	push   %eax
     1de:	e8 e8 0c 00 00       	call   ecb <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1e3:	83 c4 0c             	add    $0xc,%esp
     1e6:	ff 73 04             	push   0x4(%ebx)
     1e9:	68 77 13 00 00       	push   $0x1377
     1ee:	6a 02                	push   $0x2
     1f0:	e8 0b 0e 00 00       	call   1000 <printf>
    break;
     1f5:	83 c4 10             	add    $0x10,%esp
    exit();
     1f8:	e8 96 0c 00 00       	call   e93 <exit>
    if(fork1() == 0)
     1fd:	e8 8e ff ff ff       	call   190 <fork1>
     202:	85 c0                	test   %eax,%eax
     204:	75 f2                	jne    1f8 <runcmd+0x48>
     206:	e9 97 00 00 00       	jmp    2a2 <runcmd+0xf2>
    if(pipe(p) < 0)
     20b:	83 ec 0c             	sub    $0xc,%esp
     20e:	8d 45 f0             	lea    -0x10(%ebp),%eax
     211:	50                   	push   %eax
     212:	e8 8c 0c 00 00       	call   ea3 <pipe>
     217:	83 c4 10             	add    $0x10,%esp
     21a:	85 c0                	test   %eax,%eax
     21c:	0f 88 ad 00 00 00    	js     2cf <runcmd+0x11f>
    if(fork1() == 0){
     222:	e8 69 ff ff ff       	call   190 <fork1>
     227:	85 c0                	test   %eax,%eax
     229:	0f 84 ad 00 00 00    	je     2dc <runcmd+0x12c>
    if(fork1() == 0){
     22f:	e8 5c ff ff ff       	call   190 <fork1>
     234:	85 c0                	test   %eax,%eax
     236:	0f 85 ce 00 00 00    	jne    30a <runcmd+0x15a>
      close(0);
     23c:	83 ec 0c             	sub    $0xc,%esp
     23f:	6a 00                	push   $0x0
     241:	e8 75 0c 00 00       	call   ebb <close>
      dup(p[0]);
     246:	5a                   	pop    %edx
     247:	ff 75 f0             	push   -0x10(%ebp)
     24a:	e8 bc 0c 00 00       	call   f0b <dup>
      close(p[0]);
     24f:	59                   	pop    %ecx
     250:	ff 75 f0             	push   -0x10(%ebp)
     253:	e8 63 0c 00 00       	call   ebb <close>
      close(p[1]);
     258:	58                   	pop    %eax
     259:	ff 75 f4             	push   -0xc(%ebp)
     25c:	e8 5a 0c 00 00       	call   ebb <close>
      runcmd(pcmd->right);
     261:	58                   	pop    %eax
     262:	ff 73 08             	push   0x8(%ebx)
     265:	e8 46 ff ff ff       	call   1b0 <runcmd>
    if(fork1() == 0)
     26a:	e8 21 ff ff ff       	call   190 <fork1>
     26f:	85 c0                	test   %eax,%eax
     271:	74 2f                	je     2a2 <runcmd+0xf2>
    wait();
     273:	e8 23 0c 00 00       	call   e9b <wait>
    runcmd(lcmd->right);
     278:	83 ec 0c             	sub    $0xc,%esp
     27b:	ff 73 08             	push   0x8(%ebx)
     27e:	e8 2d ff ff ff       	call   1b0 <runcmd>
    close(rcmd->fd);
     283:	83 ec 0c             	sub    $0xc,%esp
     286:	ff 73 14             	push   0x14(%ebx)
     289:	e8 2d 0c 00 00       	call   ebb <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     28e:	58                   	pop    %eax
     28f:	5a                   	pop    %edx
     290:	ff 73 10             	push   0x10(%ebx)
     293:	ff 73 08             	push   0x8(%ebx)
     296:	e8 38 0c 00 00       	call   ed3 <open>
     29b:	83 c4 10             	add    $0x10,%esp
     29e:	85 c0                	test   %eax,%eax
     2a0:	78 18                	js     2ba <runcmd+0x10a>
      runcmd(bcmd->cmd);
     2a2:	83 ec 0c             	sub    $0xc,%esp
     2a5:	ff 73 04             	push   0x4(%ebx)
     2a8:	e8 03 ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     2ad:	83 ec 0c             	sub    $0xc,%esp
     2b0:	68 70 13 00 00       	push   $0x1370
     2b5:	e8 b6 fe ff ff       	call   170 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     2ba:	51                   	push   %ecx
     2bb:	ff 73 08             	push   0x8(%ebx)
     2be:	68 87 13 00 00       	push   $0x1387
     2c3:	6a 02                	push   $0x2
     2c5:	e8 36 0d 00 00       	call   1000 <printf>
      exit();
     2ca:	e8 c4 0b 00 00       	call   e93 <exit>
      panic("pipe");
     2cf:	83 ec 0c             	sub    $0xc,%esp
     2d2:	68 97 13 00 00       	push   $0x1397
     2d7:	e8 94 fe ff ff       	call   170 <panic>
      close(1);
     2dc:	83 ec 0c             	sub    $0xc,%esp
     2df:	6a 01                	push   $0x1
     2e1:	e8 d5 0b 00 00       	call   ebb <close>
      dup(p[1]);
     2e6:	58                   	pop    %eax
     2e7:	ff 75 f4             	push   -0xc(%ebp)
     2ea:	e8 1c 0c 00 00       	call   f0b <dup>
      close(p[0]);
     2ef:	58                   	pop    %eax
     2f0:	ff 75 f0             	push   -0x10(%ebp)
     2f3:	e8 c3 0b 00 00       	call   ebb <close>
      close(p[1]);
     2f8:	58                   	pop    %eax
     2f9:	ff 75 f4             	push   -0xc(%ebp)
     2fc:	e8 ba 0b 00 00       	call   ebb <close>
      runcmd(pcmd->left);
     301:	5a                   	pop    %edx
     302:	ff 73 04             	push   0x4(%ebx)
     305:	e8 a6 fe ff ff       	call   1b0 <runcmd>
    close(p[0]);
     30a:	83 ec 0c             	sub    $0xc,%esp
     30d:	ff 75 f0             	push   -0x10(%ebp)
     310:	e8 a6 0b 00 00       	call   ebb <close>
    close(p[1]);
     315:	58                   	pop    %eax
     316:	ff 75 f4             	push   -0xc(%ebp)
     319:	e8 9d 0b 00 00       	call   ebb <close>
    wait();
     31e:	e8 78 0b 00 00       	call   e9b <wait>
    wait();
     323:	e8 73 0b 00 00       	call   e9b <wait>
    break;
     328:	83 c4 10             	add    $0x10,%esp
     32b:	e9 c8 fe ff ff       	jmp    1f8 <runcmd+0x48>

00000330 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     330:	55                   	push   %ebp
     331:	89 e5                	mov    %esp,%ebp
     333:	53                   	push   %ebx
     334:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     337:	6a 54                	push   $0x54
     339:	e8 42 0f 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     33e:	83 c4 0c             	add    $0xc,%esp
     341:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     343:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     345:	6a 00                	push   $0x0
     347:	50                   	push   %eax
     348:	e8 c3 09 00 00       	call   d10 <memset>
  cmd->type = EXEC;
     34d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     353:	89 d8                	mov    %ebx,%eax
     355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     358:	c9                   	leave
     359:	c3                   	ret
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000360 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	53                   	push   %ebx
     364:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     367:	6a 18                	push   $0x18
     369:	e8 12 0f 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     36e:	83 c4 0c             	add    $0xc,%esp
     371:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     373:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     375:	6a 00                	push   $0x0
     377:	50                   	push   %eax
     378:	e8 93 09 00 00       	call   d10 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     37d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     380:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     386:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     389:	8b 45 0c             	mov    0xc(%ebp),%eax
     38c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     38f:	8b 45 10             	mov    0x10(%ebp),%eax
     392:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     395:	8b 45 14             	mov    0x14(%ebp),%eax
     398:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     39b:	8b 45 18             	mov    0x18(%ebp),%eax
     39e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3a1:	89 d8                	mov    %ebx,%eax
     3a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3a6:	c9                   	leave
     3a7:	c3                   	ret
     3a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3af:	00 

000003b0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3b0:	55                   	push   %ebp
     3b1:	89 e5                	mov    %esp,%ebp
     3b3:	53                   	push   %ebx
     3b4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3b7:	6a 0c                	push   $0xc
     3b9:	e8 c2 0e 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3be:	83 c4 0c             	add    $0xc,%esp
     3c1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     3c3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3c5:	6a 00                	push   $0x0
     3c7:	50                   	push   %eax
     3c8:	e8 43 09 00 00       	call   d10 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3d0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3df:	89 d8                	mov    %ebx,%eax
     3e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3e4:	c9                   	leave
     3e5:	c3                   	ret
     3e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3ed:	00 
     3ee:	66 90                	xchg   %ax,%ax

000003f0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 0c                	push   $0xc
     3f9:	e8 82 0e 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
     401:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 03 09 00 00       	call   d10 <memset>
  cmd->type = LIST;
  cmd->left = left;
     40d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     410:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     416:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     419:	8b 45 0c             	mov    0xc(%ebp),%eax
     41c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     41f:	89 d8                	mov    %ebx,%eax
     421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     424:	c9                   	leave
     425:	c3                   	ret
     426:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     42d:	00 
     42e:	66 90                	xchg   %ax,%ax

00000430 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	6a 08                	push   $0x8
     439:	e8 42 0e 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     43e:	83 c4 0c             	add    $0xc,%esp
     441:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     443:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     445:	6a 00                	push   $0x0
     447:	50                   	push   %eax
     448:	e8 c3 08 00 00       	call   d10 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     450:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     459:	89 d8                	mov    %ebx,%eax
     45b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     45e:	c9                   	leave
     45f:	c3                   	ret

00000460 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	57                   	push   %edi
     464:	56                   	push   %esi
     465:	53                   	push   %ebx
     466:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     469:	8b 45 08             	mov    0x8(%ebp),%eax
{
     46c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     46f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     472:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     474:	39 df                	cmp    %ebx,%edi
     476:	72 0f                	jb     487 <gettoken+0x27>
     478:	eb 25                	jmp    49f <gettoken+0x3f>
     47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     480:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     483:	39 fb                	cmp    %edi,%ebx
     485:	74 18                	je     49f <gettoken+0x3f>
     487:	0f be 07             	movsbl (%edi),%eax
     48a:	83 ec 08             	sub    $0x8,%esp
     48d:	50                   	push   %eax
     48e:	68 88 1a 00 00       	push   $0x1a88
     493:	e8 98 08 00 00       	call   d30 <strchr>
     498:	83 c4 10             	add    $0x10,%esp
     49b:	85 c0                	test   %eax,%eax
     49d:	75 e1                	jne    480 <gettoken+0x20>
  if(q)
     49f:	85 f6                	test   %esi,%esi
     4a1:	74 02                	je     4a5 <gettoken+0x45>
    *q = s;
     4a3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4a5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4a8:	3c 3c                	cmp    $0x3c,%al
     4aa:	0f 8f c8 00 00 00    	jg     578 <gettoken+0x118>
     4b0:	3c 3a                	cmp    $0x3a,%al
     4b2:	7f 5a                	jg     50e <gettoken+0xae>
     4b4:	84 c0                	test   %al,%al
     4b6:	75 48                	jne    500 <gettoken+0xa0>
     4b8:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     4ba:	8b 4d 14             	mov    0x14(%ebp),%ecx
     4bd:	85 c9                	test   %ecx,%ecx
     4bf:	74 05                	je     4c6 <gettoken+0x66>
    *eq = s;
     4c1:	8b 45 14             	mov    0x14(%ebp),%eax
     4c4:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4c6:	39 df                	cmp    %ebx,%edi
     4c8:	72 0d                	jb     4d7 <gettoken+0x77>
     4ca:	eb 23                	jmp    4ef <gettoken+0x8f>
     4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     4d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4d3:	39 fb                	cmp    %edi,%ebx
     4d5:	74 18                	je     4ef <gettoken+0x8f>
     4d7:	0f be 07             	movsbl (%edi),%eax
     4da:	83 ec 08             	sub    $0x8,%esp
     4dd:	50                   	push   %eax
     4de:	68 88 1a 00 00       	push   $0x1a88
     4e3:	e8 48 08 00 00       	call   d30 <strchr>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	85 c0                	test   %eax,%eax
     4ed:	75 e1                	jne    4d0 <gettoken+0x70>
  *ps = s;
     4ef:	8b 45 08             	mov    0x8(%ebp),%eax
     4f2:	89 38                	mov    %edi,(%eax)
  return ret;
}
     4f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4f7:	89 f0                	mov    %esi,%eax
     4f9:	5b                   	pop    %ebx
     4fa:	5e                   	pop    %esi
     4fb:	5f                   	pop    %edi
     4fc:	5d                   	pop    %ebp
     4fd:	c3                   	ret
     4fe:	66 90                	xchg   %ax,%ax
  switch(*s){
     500:	78 22                	js     524 <gettoken+0xc4>
     502:	3c 26                	cmp    $0x26,%al
     504:	74 08                	je     50e <gettoken+0xae>
     506:	8d 48 d8             	lea    -0x28(%eax),%ecx
     509:	80 f9 01             	cmp    $0x1,%cl
     50c:	77 16                	ja     524 <gettoken+0xc4>
  ret = *s;
     50e:	0f be f0             	movsbl %al,%esi
    s++;
     511:	83 c7 01             	add    $0x1,%edi
    break;
     514:	eb a4                	jmp    4ba <gettoken+0x5a>
     516:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     51d:	00 
     51e:	66 90                	xchg   %ax,%ax
  switch(*s){
     520:	3c 7c                	cmp    $0x7c,%al
     522:	74 ea                	je     50e <gettoken+0xae>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     524:	39 df                	cmp    %ebx,%edi
     526:	72 27                	jb     54f <gettoken+0xef>
     528:	e9 87 00 00 00       	jmp    5b4 <gettoken+0x154>
     52d:	8d 76 00             	lea    0x0(%esi),%esi
     530:	0f be 07             	movsbl (%edi),%eax
     533:	83 ec 08             	sub    $0x8,%esp
     536:	50                   	push   %eax
     537:	68 80 1a 00 00       	push   $0x1a80
     53c:	e8 ef 07 00 00       	call   d30 <strchr>
     541:	83 c4 10             	add    $0x10,%esp
     544:	85 c0                	test   %eax,%eax
     546:	75 1f                	jne    567 <gettoken+0x107>
      s++;
     548:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     54b:	39 fb                	cmp    %edi,%ebx
     54d:	74 4d                	je     59c <gettoken+0x13c>
     54f:	0f be 07             	movsbl (%edi),%eax
     552:	83 ec 08             	sub    $0x8,%esp
     555:	50                   	push   %eax
     556:	68 88 1a 00 00       	push   $0x1a88
     55b:	e8 d0 07 00 00       	call   d30 <strchr>
     560:	83 c4 10             	add    $0x10,%esp
     563:	85 c0                	test   %eax,%eax
     565:	74 c9                	je     530 <gettoken+0xd0>
    ret = 'a';
     567:	be 61 00 00 00       	mov    $0x61,%esi
     56c:	e9 49 ff ff ff       	jmp    4ba <gettoken+0x5a>
     571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     578:	3c 3e                	cmp    $0x3e,%al
     57a:	75 a4                	jne    520 <gettoken+0xc0>
    if(*s == '>'){
     57c:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     580:	74 0d                	je     58f <gettoken+0x12f>
    s++;
     582:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     585:	be 3e 00 00 00       	mov    $0x3e,%esi
     58a:	e9 2b ff ff ff       	jmp    4ba <gettoken+0x5a>
      s++;
     58f:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     592:	be 2b 00 00 00       	mov    $0x2b,%esi
     597:	e9 1e ff ff ff       	jmp    4ba <gettoken+0x5a>
  if(eq)
     59c:	8b 45 14             	mov    0x14(%ebp),%eax
     59f:	85 c0                	test   %eax,%eax
     5a1:	74 05                	je     5a8 <gettoken+0x148>
    *eq = s;
     5a3:	8b 45 14             	mov    0x14(%ebp),%eax
     5a6:	89 18                	mov    %ebx,(%eax)
  while(s < es && strchr(whitespace, *s))
     5a8:	89 df                	mov    %ebx,%edi
    ret = 'a';
     5aa:	be 61 00 00 00       	mov    $0x61,%esi
     5af:	e9 3b ff ff ff       	jmp    4ef <gettoken+0x8f>
  if(eq)
     5b4:	8b 55 14             	mov    0x14(%ebp),%edx
     5b7:	85 d2                	test   %edx,%edx
     5b9:	74 ef                	je     5aa <gettoken+0x14a>
    *eq = s;
     5bb:	8b 45 14             	mov    0x14(%ebp),%eax
     5be:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     5c0:	eb e8                	jmp    5aa <gettoken+0x14a>
     5c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5c9:	00 
     5ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
     5d9:	8b 7d 08             	mov    0x8(%ebp),%edi
     5dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     5df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     5e1:	39 f3                	cmp    %esi,%ebx
     5e3:	72 12                	jb     5f7 <peek+0x27>
     5e5:	eb 28                	jmp    60f <peek+0x3f>
     5e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5ee:	00 
     5ef:	90                   	nop
    s++;
     5f0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5f3:	39 de                	cmp    %ebx,%esi
     5f5:	74 18                	je     60f <peek+0x3f>
     5f7:	0f be 03             	movsbl (%ebx),%eax
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	50                   	push   %eax
     5fe:	68 88 1a 00 00       	push   $0x1a88
     603:	e8 28 07 00 00       	call   d30 <strchr>
     608:	83 c4 10             	add    $0x10,%esp
     60b:	85 c0                	test   %eax,%eax
     60d:	75 e1                	jne    5f0 <peek+0x20>
  *ps = s;
     60f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     611:	0f be 03             	movsbl (%ebx),%eax
     614:	31 d2                	xor    %edx,%edx
     616:	84 c0                	test   %al,%al
     618:	75 0e                	jne    628 <peek+0x58>
}
     61a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     61d:	89 d0                	mov    %edx,%eax
     61f:	5b                   	pop    %ebx
     620:	5e                   	pop    %esi
     621:	5f                   	pop    %edi
     622:	5d                   	pop    %ebp
     623:	c3                   	ret
     624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     628:	83 ec 08             	sub    $0x8,%esp
     62b:	50                   	push   %eax
     62c:	ff 75 10             	push   0x10(%ebp)
     62f:	e8 fc 06 00 00       	call   d30 <strchr>
     634:	83 c4 10             	add    $0x10,%esp
     637:	31 d2                	xor    %edx,%edx
     639:	85 c0                	test   %eax,%eax
     63b:	0f 95 c2             	setne  %dl
}
     63e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     641:	5b                   	pop    %ebx
     642:	89 d0                	mov    %edx,%eax
     644:	5e                   	pop    %esi
     645:	5f                   	pop    %edi
     646:	5d                   	pop    %ebp
     647:	c3                   	ret
     648:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     64f:	00 

00000650 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	57                   	push   %edi
     654:	56                   	push   %esi
     655:	53                   	push   %ebx
     656:	83 ec 2c             	sub    $0x2c,%esp
     659:	8b 7d 08             	mov    0x8(%ebp),%edi
     65c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     65f:	90                   	nop
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
     660:	89 7d 08             	mov    %edi,0x8(%ebp)
     663:	8d 75 e0             	lea    -0x20(%ebp),%esi
  while(peek(ps, es, "<>")){
     666:	83 ec 04             	sub    $0x4,%esp
     669:	68 b9 13 00 00       	push   $0x13b9
     66e:	ff 75 10             	push   0x10(%ebp)
     671:	53                   	push   %ebx
     672:	e8 59 ff ff ff       	call   5d0 <peek>
     677:	83 c4 10             	add    $0x10,%esp
     67a:	85 c0                	test   %eax,%eax
     67c:	0f 84 5e 01 00 00    	je     7e0 <parseredirs+0x190>
    tok = gettoken(ps, es, 0, 0);
     682:	6a 00                	push   $0x0
     684:	6a 00                	push   $0x0
     686:	ff 75 10             	push   0x10(%ebp)
     689:	53                   	push   %ebx
     68a:	e8 d1 fd ff ff       	call   460 <gettoken>
     68f:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     691:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     694:	50                   	push   %eax
     695:	56                   	push   %esi
     696:	ff 75 10             	push   0x10(%ebp)
     699:	53                   	push   %ebx
     69a:	e8 c1 fd ff ff       	call   460 <gettoken>
     69f:	83 c4 20             	add    $0x20,%esp
     6a2:	83 f8 61             	cmp    $0x61,%eax
     6a5:	0f 85 40 01 00 00    	jne    7eb <parseredirs+0x19b>
      panic("missing file for redirection");
    switch(tok){
     6ab:	83 ff 3c             	cmp    $0x3c,%edi
     6ae:	74 70                	je     720 <parseredirs+0xd0>
     6b0:	83 ff 3e             	cmp    $0x3e,%edi
     6b3:	0f 84 c7 00 00 00    	je     780 <parseredirs+0x130>
     6b9:	83 ff 2b             	cmp    $0x2b,%edi
     6bc:	75 a8                	jne    666 <parseredirs+0x16>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6be:	8b 7d 08             	mov    0x8(%ebp),%edi
     6c1:	66 0f 6e 65 e0       	movd   -0x20(%ebp),%xmm4
  cmd = malloc(sizeof(*cmd));
     6c6:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6c9:	8b 75 e4             	mov    -0x1c(%ebp),%esi
     6cc:	66 0f 6e c7          	movd   %edi,%xmm0
     6d0:	66 0f 62 c4          	punpckldq %xmm4,%xmm0
     6d4:	66 0f d6 45 d0       	movq   %xmm0,-0x30(%ebp)
  cmd = malloc(sizeof(*cmd));
     6d9:	6a 18                	push   $0x18
     6db:	e8 a0 0b 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6e0:	83 c4 0c             	add    $0xc,%esp
     6e3:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     6e5:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     6e7:	6a 00                	push   $0x0
     6e9:	50                   	push   %eax
     6ea:	e8 21 06 00 00       	call   d10 <memset>
  cmd->cmd = subcmd;
     6ef:	f3 0f 7e 45 d0       	movq   -0x30(%ebp),%xmm0
  cmd->efile = efile;
     6f4:	89 77 0c             	mov    %esi,0xc(%edi)
      break;
     6f7:	83 c4 10             	add    $0x10,%esp
  cmd->mode = mode;
     6fa:	f3 0f 7e 2d 58 14 00 	movq   0x1458,%xmm5
     701:	00 
  cmd->type = REDIR;
     702:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
    if(gettoken(ps, es, &q, &eq) != 'a')
     708:	8d 75 e0             	lea    -0x20(%ebp),%esi
     70b:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->cmd = subcmd;
     70e:	66 0f d6 47 04       	movq   %xmm0,0x4(%edi)
  cmd->mode = mode;
     713:	66 0f d6 6f 10       	movq   %xmm5,0x10(%edi)
      break;
     718:	e9 49 ff ff ff       	jmp    666 <parseredirs+0x16>
     71d:	8d 76 00             	lea    0x0(%esi),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     720:	8b 7d 08             	mov    0x8(%ebp),%edi
     723:	66 0f 6e 4d e0       	movd   -0x20(%ebp),%xmm1
  cmd = malloc(sizeof(*cmd));
     728:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     72b:	8b 75 e4             	mov    -0x1c(%ebp),%esi
     72e:	66 0f 6e c7          	movd   %edi,%xmm0
     732:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
     736:	66 0f d6 45 d0       	movq   %xmm0,-0x30(%ebp)
  cmd = malloc(sizeof(*cmd));
     73b:	6a 18                	push   $0x18
     73d:	e8 3e 0b 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     742:	83 c4 0c             	add    $0xc,%esp
     745:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     747:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     749:	6a 00                	push   $0x0
     74b:	50                   	push   %eax
     74c:	e8 bf 05 00 00       	call   d10 <memset>
  cmd->cmd = subcmd;
     751:	f3 0f 7e 45 d0       	movq   -0x30(%ebp),%xmm0
  cmd->efile = efile;
     756:	89 77 0c             	mov    %esi,0xc(%edi)
      break;
     759:	83 c4 10             	add    $0x10,%esp
  cmd->type = REDIR;
     75c:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->mode = mode;
     762:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
     769:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
  cmd->cmd = subcmd;
     770:	66 0f d6 47 04       	movq   %xmm0,0x4(%edi)
      break;
     775:	e9 e6 fe ff ff       	jmp    660 <parseredirs+0x10>
     77a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     780:	8b 7d 08             	mov    0x8(%ebp),%edi
     783:	66 0f 6e 55 e0       	movd   -0x20(%ebp),%xmm2
  cmd = malloc(sizeof(*cmd));
     788:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     78b:	8b 75 e4             	mov    -0x1c(%ebp),%esi
     78e:	66 0f 6e c7          	movd   %edi,%xmm0
     792:	66 0f 62 c2          	punpckldq %xmm2,%xmm0
     796:	66 0f d6 45 d0       	movq   %xmm0,-0x30(%ebp)
  cmd = malloc(sizeof(*cmd));
     79b:	6a 18                	push   $0x18
     79d:	e8 de 0a 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     7a2:	83 c4 0c             	add    $0xc,%esp
     7a5:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     7a7:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     7a9:	6a 00                	push   $0x0
     7ab:	50                   	push   %eax
     7ac:	e8 5f 05 00 00       	call   d10 <memset>
  cmd->cmd = subcmd;
     7b1:	f3 0f 7e 45 d0       	movq   -0x30(%ebp),%xmm0
  cmd->efile = efile;
     7b6:	89 77 0c             	mov    %esi,0xc(%edi)
      break;
     7b9:	83 c4 10             	add    $0x10,%esp
  cmd->mode = mode;
     7bc:	f3 0f 7e 1d 58 14 00 	movq   0x1458,%xmm3
     7c3:	00 
  cmd->type = REDIR;
     7c4:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     7ca:	66 0f d6 47 04       	movq   %xmm0,0x4(%edi)
  cmd->mode = mode;
     7cf:	66 0f d6 5f 10       	movq   %xmm3,0x10(%edi)
      break;
     7d4:	e9 87 fe ff ff       	jmp    660 <parseredirs+0x10>
     7d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     7e0:	8b 45 08             	mov    0x8(%ebp),%eax
     7e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7e6:	5b                   	pop    %ebx
     7e7:	5e                   	pop    %esi
     7e8:	5f                   	pop    %edi
     7e9:	5d                   	pop    %ebp
     7ea:	c3                   	ret
      panic("missing file for redirection");
     7eb:	83 ec 0c             	sub    $0xc,%esp
     7ee:	68 9c 13 00 00       	push   $0x139c
     7f3:	e8 78 f9 ff ff       	call   170 <panic>
     7f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     7ff:	00 

00000800 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     800:	55                   	push   %ebp
     801:	89 e5                	mov    %esp,%ebp
     803:	57                   	push   %edi
     804:	56                   	push   %esi
     805:	53                   	push   %ebx
     806:	83 ec 30             	sub    $0x30,%esp
     809:	8b 5d 08             	mov    0x8(%ebp),%ebx
     80c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     80f:	68 bc 13 00 00       	push   $0x13bc
     814:	56                   	push   %esi
     815:	53                   	push   %ebx
     816:	e8 b5 fd ff ff       	call   5d0 <peek>
     81b:	83 c4 10             	add    $0x10,%esp
     81e:	85 c0                	test   %eax,%eax
     820:	0f 85 aa 00 00 00    	jne    8d0 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     826:	83 ec 0c             	sub    $0xc,%esp
     829:	89 c7                	mov    %eax,%edi
     82b:	6a 54                	push   $0x54
     82d:	e8 4e 0a 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     832:	83 c4 0c             	add    $0xc,%esp
     835:	6a 54                	push   $0x54
     837:	6a 00                	push   $0x0
     839:	89 45 d0             	mov    %eax,-0x30(%ebp)
     83c:	50                   	push   %eax
     83d:	e8 ce 04 00 00       	call   d10 <memset>
  cmd->type = EXEC;
     842:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     845:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     848:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     84e:	56                   	push   %esi
     84f:	53                   	push   %ebx
     850:	50                   	push   %eax
     851:	e8 fa fd ff ff       	call   650 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     856:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     859:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     85c:	eb 15                	jmp    873 <parseexec+0x73>
     85e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     860:	83 ec 04             	sub    $0x4,%esp
     863:	56                   	push   %esi
     864:	53                   	push   %ebx
     865:	ff 75 d4             	push   -0x2c(%ebp)
     868:	e8 e3 fd ff ff       	call   650 <parseredirs>
     86d:	83 c4 10             	add    $0x10,%esp
     870:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     873:	83 ec 04             	sub    $0x4,%esp
     876:	68 d3 13 00 00       	push   $0x13d3
     87b:	56                   	push   %esi
     87c:	53                   	push   %ebx
     87d:	e8 4e fd ff ff       	call   5d0 <peek>
     882:	83 c4 10             	add    $0x10,%esp
     885:	85 c0                	test   %eax,%eax
     887:	75 5f                	jne    8e8 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     889:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     88c:	50                   	push   %eax
     88d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     890:	50                   	push   %eax
     891:	56                   	push   %esi
     892:	53                   	push   %ebx
     893:	e8 c8 fb ff ff       	call   460 <gettoken>
     898:	83 c4 10             	add    $0x10,%esp
     89b:	85 c0                	test   %eax,%eax
     89d:	74 49                	je     8e8 <parseexec+0xe8>
    if(tok != 'a')
     89f:	83 f8 61             	cmp    $0x61,%eax
     8a2:	75 62                	jne    906 <parseexec+0x106>
    cmd->argv[argc] = q;
     8a4:	8b 45 e0             	mov    -0x20(%ebp),%eax
     8a7:	8b 55 d0             	mov    -0x30(%ebp),%edx
     8aa:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     8ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     8b1:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     8b5:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     8b8:	83 ff 0a             	cmp    $0xa,%edi
     8bb:	75 a3                	jne    860 <parseexec+0x60>
      panic("too many args");
     8bd:	83 ec 0c             	sub    $0xc,%esp
     8c0:	68 c5 13 00 00       	push   $0x13c5
     8c5:	e8 a6 f8 ff ff       	call   170 <panic>
     8ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     8d0:	89 75 0c             	mov    %esi,0xc(%ebp)
     8d3:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     8d6:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8d9:	5b                   	pop    %ebx
     8da:	5e                   	pop    %esi
     8db:	5f                   	pop    %edi
     8dc:	5d                   	pop    %ebp
    return parseblock(ps, es);
     8dd:	e9 ae 01 00 00       	jmp    a90 <parseblock>
     8e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     8e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     8eb:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     8f2:	00 
  cmd->eargv[argc] = 0;
     8f3:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     8fa:	00 
}
     8fb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     8fe:	8d 65 f4             	lea    -0xc(%ebp),%esp
     901:	5b                   	pop    %ebx
     902:	5e                   	pop    %esi
     903:	5f                   	pop    %edi
     904:	5d                   	pop    %ebp
     905:	c3                   	ret
      panic("syntax");
     906:	83 ec 0c             	sub    $0xc,%esp
     909:	68 be 13 00 00       	push   $0x13be
     90e:	e8 5d f8 ff ff       	call   170 <panic>
     913:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     91a:	00 
     91b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000920 <parsepipe>:
{
     920:	55                   	push   %ebp
     921:	89 e5                	mov    %esp,%ebp
     923:	57                   	push   %edi
     924:	56                   	push   %esi
     925:	53                   	push   %ebx
     926:	83 ec 14             	sub    $0x14,%esp
     929:	8b 75 08             	mov    0x8(%ebp),%esi
     92c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     92f:	57                   	push   %edi
     930:	56                   	push   %esi
     931:	e8 ca fe ff ff       	call   800 <parseexec>
  if(peek(ps, es, "|")){
     936:	83 c4 0c             	add    $0xc,%esp
     939:	68 d8 13 00 00       	push   $0x13d8
  cmd = parseexec(ps, es);
     93e:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     940:	57                   	push   %edi
     941:	56                   	push   %esi
     942:	e8 89 fc ff ff       	call   5d0 <peek>
     947:	83 c4 10             	add    $0x10,%esp
     94a:	85 c0                	test   %eax,%eax
     94c:	75 12                	jne    960 <parsepipe+0x40>
}
     94e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     951:	89 d8                	mov    %ebx,%eax
     953:	5b                   	pop    %ebx
     954:	5e                   	pop    %esi
     955:	5f                   	pop    %edi
     956:	5d                   	pop    %ebp
     957:	c3                   	ret
     958:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     95f:	00 
    gettoken(ps, es, 0, 0);
     960:	6a 00                	push   $0x0
     962:	6a 00                	push   $0x0
     964:	57                   	push   %edi
     965:	56                   	push   %esi
     966:	e8 f5 fa ff ff       	call   460 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     96b:	58                   	pop    %eax
     96c:	5a                   	pop    %edx
     96d:	57                   	push   %edi
     96e:	56                   	push   %esi
     96f:	e8 ac ff ff ff       	call   920 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     974:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     97b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     97d:	e8 fe 08 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     982:	83 c4 0c             	add    $0xc,%esp
     985:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     987:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     989:	6a 00                	push   $0x0
     98b:	50                   	push   %eax
     98c:	e8 7f 03 00 00       	call   d10 <memset>
  cmd->left = left;
     991:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     994:	83 c4 10             	add    $0x10,%esp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     997:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     999:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     99f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     9a1:	89 7e 08             	mov    %edi,0x8(%esi)
}
     9a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9a7:	5b                   	pop    %ebx
     9a8:	5e                   	pop    %esi
     9a9:	5f                   	pop    %edi
     9aa:	5d                   	pop    %ebp
     9ab:	c3                   	ret
     9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000009b0 <parseline>:
{
     9b0:	55                   	push   %ebp
     9b1:	89 e5                	mov    %esp,%ebp
     9b3:	57                   	push   %edi
     9b4:	56                   	push   %esi
     9b5:	53                   	push   %ebx
     9b6:	83 ec 24             	sub    $0x24,%esp
     9b9:	8b 75 08             	mov    0x8(%ebp),%esi
     9bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     9bf:	57                   	push   %edi
     9c0:	56                   	push   %esi
     9c1:	e8 5a ff ff ff       	call   920 <parsepipe>
  while(peek(ps, es, "&")){
     9c6:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     9c9:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     9cb:	eb 3b                	jmp    a08 <parseline+0x58>
     9cd:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     9d0:	6a 00                	push   $0x0
     9d2:	6a 00                	push   $0x0
     9d4:	57                   	push   %edi
     9d5:	56                   	push   %esi
     9d6:	e8 85 fa ff ff       	call   460 <gettoken>
  cmd = malloc(sizeof(*cmd));
     9db:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     9e2:	e8 99 08 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9e7:	83 c4 0c             	add    $0xc,%esp
     9ea:	6a 08                	push   $0x8
     9ec:	6a 00                	push   $0x0
     9ee:	50                   	push   %eax
     9ef:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     9f2:	e8 19 03 00 00       	call   d10 <memset>
  cmd->type = BACK;
     9f7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     9fa:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     9fd:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     a03:	89 5a 04             	mov    %ebx,0x4(%edx)
    cmd = backcmd(cmd);
     a06:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     a08:	83 ec 04             	sub    $0x4,%esp
     a0b:	68 da 13 00 00       	push   $0x13da
     a10:	57                   	push   %edi
     a11:	56                   	push   %esi
     a12:	e8 b9 fb ff ff       	call   5d0 <peek>
     a17:	83 c4 10             	add    $0x10,%esp
     a1a:	85 c0                	test   %eax,%eax
     a1c:	75 b2                	jne    9d0 <parseline+0x20>
  if(peek(ps, es, ";")){
     a1e:	83 ec 04             	sub    $0x4,%esp
     a21:	68 d6 13 00 00       	push   $0x13d6
     a26:	57                   	push   %edi
     a27:	56                   	push   %esi
     a28:	e8 a3 fb ff ff       	call   5d0 <peek>
     a2d:	83 c4 10             	add    $0x10,%esp
     a30:	85 c0                	test   %eax,%eax
     a32:	75 0c                	jne    a40 <parseline+0x90>
}
     a34:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a37:	89 d8                	mov    %ebx,%eax
     a39:	5b                   	pop    %ebx
     a3a:	5e                   	pop    %esi
     a3b:	5f                   	pop    %edi
     a3c:	5d                   	pop    %ebp
     a3d:	c3                   	ret
     a3e:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     a40:	6a 00                	push   $0x0
     a42:	6a 00                	push   $0x0
     a44:	57                   	push   %edi
     a45:	56                   	push   %esi
     a46:	e8 15 fa ff ff       	call   460 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     a4b:	58                   	pop    %eax
     a4c:	5a                   	pop    %edx
     a4d:	57                   	push   %edi
     a4e:	56                   	push   %esi
     a4f:	e8 5c ff ff ff       	call   9b0 <parseline>
  cmd = malloc(sizeof(*cmd));
     a54:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     a5b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     a5d:	e8 1e 08 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     a62:	83 c4 0c             	add    $0xc,%esp
     a65:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     a67:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     a69:	6a 00                	push   $0x0
     a6b:	50                   	push   %eax
     a6c:	e8 9f 02 00 00       	call   d10 <memset>
  cmd->left = left;
     a71:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     a74:	83 c4 10             	add    $0x10,%esp
    cmd = listcmd(cmd, parseline(ps, es));
     a77:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     a79:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     a7f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     a81:	89 7e 08             	mov    %edi,0x8(%esi)
}
     a84:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a87:	5b                   	pop    %ebx
     a88:	5e                   	pop    %esi
     a89:	5f                   	pop    %edi
     a8a:	5d                   	pop    %ebp
     a8b:	c3                   	ret
     a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a90 <parseblock>:
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	57                   	push   %edi
     a94:	56                   	push   %esi
     a95:	53                   	push   %ebx
     a96:	83 ec 10             	sub    $0x10,%esp
     a99:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a9c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a9f:	68 bc 13 00 00       	push   $0x13bc
     aa4:	56                   	push   %esi
     aa5:	53                   	push   %ebx
     aa6:	e8 25 fb ff ff       	call   5d0 <peek>
     aab:	83 c4 10             	add    $0x10,%esp
     aae:	85 c0                	test   %eax,%eax
     ab0:	74 4a                	je     afc <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     ab2:	6a 00                	push   $0x0
     ab4:	6a 00                	push   $0x0
     ab6:	56                   	push   %esi
     ab7:	53                   	push   %ebx
     ab8:	e8 a3 f9 ff ff       	call   460 <gettoken>
  cmd = parseline(ps, es);
     abd:	58                   	pop    %eax
     abe:	5a                   	pop    %edx
     abf:	56                   	push   %esi
     ac0:	53                   	push   %ebx
     ac1:	e8 ea fe ff ff       	call   9b0 <parseline>
  if(!peek(ps, es, ")"))
     ac6:	83 c4 0c             	add    $0xc,%esp
     ac9:	68 f8 13 00 00       	push   $0x13f8
  cmd = parseline(ps, es);
     ace:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     ad0:	56                   	push   %esi
     ad1:	53                   	push   %ebx
     ad2:	e8 f9 fa ff ff       	call   5d0 <peek>
     ad7:	83 c4 10             	add    $0x10,%esp
     ada:	85 c0                	test   %eax,%eax
     adc:	74 2b                	je     b09 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     ade:	6a 00                	push   $0x0
     ae0:	6a 00                	push   $0x0
     ae2:	56                   	push   %esi
     ae3:	53                   	push   %ebx
     ae4:	e8 77 f9 ff ff       	call   460 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     ae9:	83 c4 0c             	add    $0xc,%esp
     aec:	56                   	push   %esi
     aed:	53                   	push   %ebx
     aee:	57                   	push   %edi
     aef:	e8 5c fb ff ff       	call   650 <parseredirs>
}
     af4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     af7:	5b                   	pop    %ebx
     af8:	5e                   	pop    %esi
     af9:	5f                   	pop    %edi
     afa:	5d                   	pop    %ebp
     afb:	c3                   	ret
    panic("parseblock");
     afc:	83 ec 0c             	sub    $0xc,%esp
     aff:	68 dc 13 00 00       	push   $0x13dc
     b04:	e8 67 f6 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     b09:	83 ec 0c             	sub    $0xc,%esp
     b0c:	68 e7 13 00 00       	push   $0x13e7
     b11:	e8 5a f6 ff ff       	call   170 <panic>
     b16:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b1d:	00 
     b1e:	66 90                	xchg   %ax,%ax

00000b20 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     b20:	55                   	push   %ebp
     b21:	89 e5                	mov    %esp,%ebp
     b23:	53                   	push   %ebx
     b24:	83 ec 04             	sub    $0x4,%esp
     b27:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     b2a:	85 db                	test   %ebx,%ebx
     b2c:	74 29                	je     b57 <nulterminate+0x37>
    return 0;

  switch(cmd->type){
     b2e:	83 3b 05             	cmpl   $0x5,(%ebx)
     b31:	77 24                	ja     b57 <nulterminate+0x37>
     b33:	8b 03                	mov    (%ebx),%eax
     b35:	ff 24 85 40 14 00 00 	jmp    *0x1440(,%eax,4)
     b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     b40:	83 ec 0c             	sub    $0xc,%esp
     b43:	ff 73 04             	push   0x4(%ebx)
     b46:	e8 d5 ff ff ff       	call   b20 <nulterminate>
    nulterminate(lcmd->right);
     b4b:	58                   	pop    %eax
     b4c:	ff 73 08             	push   0x8(%ebx)
     b4f:	e8 cc ff ff ff       	call   b20 <nulterminate>
    break;
     b54:	83 c4 10             	add    $0x10,%esp
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     b57:	89 d8                	mov    %ebx,%eax
     b59:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b5c:	c9                   	leave
     b5d:	c3                   	ret
     b5e:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     b60:	83 ec 0c             	sub    $0xc,%esp
     b63:	ff 73 04             	push   0x4(%ebx)
     b66:	e8 b5 ff ff ff       	call   b20 <nulterminate>
}
     b6b:	89 d8                	mov    %ebx,%eax
    break;
     b6d:	83 c4 10             	add    $0x10,%esp
}
     b70:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b73:	c9                   	leave
     b74:	c3                   	ret
     b75:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     b78:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b7b:	85 c9                	test   %ecx,%ecx
     b7d:	74 d8                	je     b57 <nulterminate+0x37>
     b7f:	8d 43 08             	lea    0x8(%ebx),%eax
     b82:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b89:	00 
     b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     b90:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     b93:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     b96:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b99:	8b 50 fc             	mov    -0x4(%eax),%edx
     b9c:	85 d2                	test   %edx,%edx
     b9e:	75 f0                	jne    b90 <nulterminate+0x70>
}
     ba0:	89 d8                	mov    %ebx,%eax
     ba2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ba5:	c9                   	leave
     ba6:	c3                   	ret
     ba7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     bae:	00 
     baf:	90                   	nop
    nulterminate(rcmd->cmd);
     bb0:	83 ec 0c             	sub    $0xc,%esp
     bb3:	ff 73 04             	push   0x4(%ebx)
     bb6:	e8 65 ff ff ff       	call   b20 <nulterminate>
    *rcmd->efile = 0;
     bbb:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     bbe:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     bc1:	c6 00 00             	movb   $0x0,(%eax)
}
     bc4:	89 d8                	mov    %ebx,%eax
     bc6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bc9:	c9                   	leave
     bca:	c3                   	ret
     bcb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000bd0 <parsecmd>:
{
     bd0:	55                   	push   %ebp
     bd1:	89 e5                	mov    %esp,%ebp
     bd3:	57                   	push   %edi
     bd4:	56                   	push   %esi
  cmd = parseline(&s, es);
     bd5:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     bd8:	53                   	push   %ebx
     bd9:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     bdc:	8b 5d 08             	mov    0x8(%ebp),%ebx
     bdf:	53                   	push   %ebx
     be0:	e8 fb 00 00 00       	call   ce0 <strlen>
  cmd = parseline(&s, es);
     be5:	59                   	pop    %ecx
     be6:	5e                   	pop    %esi
  es = s + strlen(s);
     be7:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     be9:	53                   	push   %ebx
     bea:	57                   	push   %edi
     beb:	e8 c0 fd ff ff       	call   9b0 <parseline>
  peek(&s, es, "");
     bf0:	83 c4 0c             	add    $0xc,%esp
     bf3:	68 86 13 00 00       	push   $0x1386
  cmd = parseline(&s, es);
     bf8:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     bfa:	53                   	push   %ebx
     bfb:	57                   	push   %edi
     bfc:	e8 cf f9 ff ff       	call   5d0 <peek>
  if(s != es){
     c01:	8b 45 08             	mov    0x8(%ebp),%eax
     c04:	83 c4 10             	add    $0x10,%esp
     c07:	39 d8                	cmp    %ebx,%eax
     c09:	75 13                	jne    c1e <parsecmd+0x4e>
  nulterminate(cmd);
     c0b:	83 ec 0c             	sub    $0xc,%esp
     c0e:	56                   	push   %esi
     c0f:	e8 0c ff ff ff       	call   b20 <nulterminate>
}
     c14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c17:	89 f0                	mov    %esi,%eax
     c19:	5b                   	pop    %ebx
     c1a:	5e                   	pop    %esi
     c1b:	5f                   	pop    %edi
     c1c:	5d                   	pop    %ebp
     c1d:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     c1e:	52                   	push   %edx
     c1f:	50                   	push   %eax
     c20:	68 fa 13 00 00       	push   $0x13fa
     c25:	6a 02                	push   $0x2
     c27:	e8 d4 03 00 00       	call   1000 <printf>
    panic("syntax");
     c2c:	c7 04 24 be 13 00 00 	movl   $0x13be,(%esp)
     c33:	e8 38 f5 ff ff       	call   170 <panic>
     c38:	66 90                	xchg   %ax,%ax
     c3a:	66 90                	xchg   %ax,%ax
     c3c:	66 90                	xchg   %ax,%ax
     c3e:	66 90                	xchg   %ax,%ax

00000c40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     c40:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c41:	31 c0                	xor    %eax,%eax
{
     c43:	89 e5                	mov    %esp,%ebp
     c45:	53                   	push   %ebx
     c46:	8b 4d 08             	mov    0x8(%ebp),%ecx
     c49:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     c50:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     c54:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     c57:	83 c0 01             	add    $0x1,%eax
     c5a:	84 d2                	test   %dl,%dl
     c5c:	75 f2                	jne    c50 <strcpy+0x10>
    ;
  return os;
}
     c5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c61:	89 c8                	mov    %ecx,%eax
     c63:	c9                   	leave
     c64:	c3                   	ret
     c65:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c6c:	00 
     c6d:	8d 76 00             	lea    0x0(%esi),%esi

00000c70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	53                   	push   %ebx
     c74:	8b 55 08             	mov    0x8(%ebp),%edx
     c77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c7a:	0f b6 02             	movzbl (%edx),%eax
     c7d:	84 c0                	test   %al,%al
     c7f:	75 2f                	jne    cb0 <strcmp+0x40>
     c81:	eb 4a                	jmp    ccd <strcmp+0x5d>
     c83:	eb 1b                	jmp    ca0 <strcmp+0x30>
     c85:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c8c:	00 
     c8d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c94:	00 
     c95:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c9c:	00 
     c9d:	8d 76 00             	lea    0x0(%esi),%esi
     ca0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     ca4:	83 c2 01             	add    $0x1,%edx
     ca7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     caa:	84 c0                	test   %al,%al
     cac:	74 12                	je     cc0 <strcmp+0x50>
     cae:	89 d9                	mov    %ebx,%ecx
     cb0:	0f b6 19             	movzbl (%ecx),%ebx
     cb3:	38 c3                	cmp    %al,%bl
     cb5:	74 e9                	je     ca0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
     cb7:	29 d8                	sub    %ebx,%eax
}
     cb9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     cbc:	c9                   	leave
     cbd:	c3                   	ret
     cbe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
     cc0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     cc4:	31 c0                	xor    %eax,%eax
     cc6:	29 d8                	sub    %ebx,%eax
}
     cc8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ccb:	c9                   	leave
     ccc:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     ccd:	0f b6 19             	movzbl (%ecx),%ebx
     cd0:	31 c0                	xor    %eax,%eax
     cd2:	eb e3                	jmp    cb7 <strcmp+0x47>
     cd4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     cdb:	00 
     cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ce0 <strlen>:

uint
strlen(const char *s)
{
     ce0:	55                   	push   %ebp
     ce1:	89 e5                	mov    %esp,%ebp
     ce3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     ce6:	80 3a 00             	cmpb   $0x0,(%edx)
     ce9:	74 15                	je     d00 <strlen+0x20>
     ceb:	31 c0                	xor    %eax,%eax
     ced:	8d 76 00             	lea    0x0(%esi),%esi
     cf0:	83 c0 01             	add    $0x1,%eax
     cf3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     cf7:	89 c1                	mov    %eax,%ecx
     cf9:	75 f5                	jne    cf0 <strlen+0x10>
    ;
  return n;
}
     cfb:	89 c8                	mov    %ecx,%eax
     cfd:	5d                   	pop    %ebp
     cfe:	c3                   	ret
     cff:	90                   	nop
  for(n = 0; s[n]; n++)
     d00:	31 c9                	xor    %ecx,%ecx
}
     d02:	5d                   	pop    %ebp
     d03:	89 c8                	mov    %ecx,%eax
     d05:	c3                   	ret
     d06:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d0d:	00 
     d0e:	66 90                	xchg   %ax,%ax

00000d10 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	57                   	push   %edi
     d14:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d17:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d1a:	8b 45 0c             	mov    0xc(%ebp),%eax
     d1d:	89 d7                	mov    %edx,%edi
     d1f:	fc                   	cld
     d20:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d22:	8b 7d fc             	mov    -0x4(%ebp),%edi
     d25:	89 d0                	mov    %edx,%eax
     d27:	c9                   	leave
     d28:	c3                   	ret
     d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d30 <strchr>:

char*
strchr(const char *s, char c)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	8b 45 08             	mov    0x8(%ebp),%eax
     d36:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     d3a:	0f b6 10             	movzbl (%eax),%edx
     d3d:	84 d2                	test   %dl,%dl
     d3f:	75 1a                	jne    d5b <strchr+0x2b>
     d41:	eb 25                	jmp    d68 <strchr+0x38>
     d43:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d4a:	00 
     d4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     d50:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     d54:	83 c0 01             	add    $0x1,%eax
     d57:	84 d2                	test   %dl,%dl
     d59:	74 0d                	je     d68 <strchr+0x38>
    if(*s == c)
     d5b:	38 d1                	cmp    %dl,%cl
     d5d:	75 f1                	jne    d50 <strchr+0x20>
      return (char*)s;
  return 0;
}
     d5f:	5d                   	pop    %ebp
     d60:	c3                   	ret
     d61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     d68:	31 c0                	xor    %eax,%eax
}
     d6a:	5d                   	pop    %ebp
     d6b:	c3                   	ret
     d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d70 <gets>:

char*
gets(char *buf, int max)
{
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	57                   	push   %edi
     d74:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     d75:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     d78:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     d79:	31 db                	xor    %ebx,%ebx
{
     d7b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     d7e:	eb 27                	jmp    da7 <gets+0x37>
    cc = read(0, &c, 1);
     d80:	83 ec 04             	sub    $0x4,%esp
     d83:	6a 01                	push   $0x1
     d85:	56                   	push   %esi
     d86:	6a 00                	push   $0x0
     d88:	e8 1e 01 00 00       	call   eab <read>
    if(cc < 1)
     d8d:	83 c4 10             	add    $0x10,%esp
     d90:	85 c0                	test   %eax,%eax
     d92:	7e 1d                	jle    db1 <gets+0x41>
      break;
    buf[i++] = c;
     d94:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d98:	8b 55 08             	mov    0x8(%ebp),%edx
     d9b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d9f:	3c 0a                	cmp    $0xa,%al
     da1:	74 10                	je     db3 <gets+0x43>
     da3:	3c 0d                	cmp    $0xd,%al
     da5:	74 0c                	je     db3 <gets+0x43>
  for(i=0; i+1 < max; ){
     da7:	89 df                	mov    %ebx,%edi
     da9:	83 c3 01             	add    $0x1,%ebx
     dac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     daf:	7c cf                	jl     d80 <gets+0x10>
     db1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     db3:	8b 45 08             	mov    0x8(%ebp),%eax
     db6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     dba:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dbd:	5b                   	pop    %ebx
     dbe:	5e                   	pop    %esi
     dbf:	5f                   	pop    %edi
     dc0:	5d                   	pop    %ebp
     dc1:	c3                   	ret
     dc2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     dc9:	00 
     dca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000dd0 <stat>:

int
stat(const char *n, struct stat *st)
{
     dd0:	55                   	push   %ebp
     dd1:	89 e5                	mov    %esp,%ebp
     dd3:	56                   	push   %esi
     dd4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     dd5:	83 ec 08             	sub    $0x8,%esp
     dd8:	6a 00                	push   $0x0
     dda:	ff 75 08             	push   0x8(%ebp)
     ddd:	e8 f1 00 00 00       	call   ed3 <open>
  if(fd < 0)
     de2:	83 c4 10             	add    $0x10,%esp
     de5:	85 c0                	test   %eax,%eax
     de7:	78 27                	js     e10 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     de9:	83 ec 08             	sub    $0x8,%esp
     dec:	ff 75 0c             	push   0xc(%ebp)
     def:	89 c3                	mov    %eax,%ebx
     df1:	50                   	push   %eax
     df2:	e8 f4 00 00 00       	call   eeb <fstat>
  close(fd);
     df7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     dfa:	89 c6                	mov    %eax,%esi
  close(fd);
     dfc:	e8 ba 00 00 00       	call   ebb <close>
  return r;
     e01:	83 c4 10             	add    $0x10,%esp
}
     e04:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e07:	89 f0                	mov    %esi,%eax
     e09:	5b                   	pop    %ebx
     e0a:	5e                   	pop    %esi
     e0b:	5d                   	pop    %ebp
     e0c:	c3                   	ret
     e0d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     e10:	be ff ff ff ff       	mov    $0xffffffff,%esi
     e15:	eb ed                	jmp    e04 <stat+0x34>
     e17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e1e:	00 
     e1f:	90                   	nop

00000e20 <atoi>:

int
atoi(const char *s)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	53                   	push   %ebx
     e24:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e27:	0f be 02             	movsbl (%edx),%eax
     e2a:	8d 48 d0             	lea    -0x30(%eax),%ecx
     e2d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     e30:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     e35:	77 1e                	ja     e55 <atoi+0x35>
     e37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e3e:	00 
     e3f:	90                   	nop
    n = n*10 + *s++ - '0';
     e40:	83 c2 01             	add    $0x1,%edx
     e43:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     e46:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     e4a:	0f be 02             	movsbl (%edx),%eax
     e4d:	8d 58 d0             	lea    -0x30(%eax),%ebx
     e50:	80 fb 09             	cmp    $0x9,%bl
     e53:	76 eb                	jbe    e40 <atoi+0x20>
  return n;
}
     e55:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     e58:	89 c8                	mov    %ecx,%eax
     e5a:	c9                   	leave
     e5b:	c3                   	ret
     e5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e60 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	8b 45 10             	mov    0x10(%ebp),%eax
     e67:	8b 55 08             	mov    0x8(%ebp),%edx
     e6a:	56                   	push   %esi
     e6b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e6e:	85 c0                	test   %eax,%eax
     e70:	7e 13                	jle    e85 <memmove+0x25>
     e72:	01 d0                	add    %edx,%eax
  dst = vdst;
     e74:	89 d7                	mov    %edx,%edi
     e76:	66 90                	xchg   %ax,%ax
     e78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e7f:	00 
    *dst++ = *src++;
     e80:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     e81:	39 f8                	cmp    %edi,%eax
     e83:	75 fb                	jne    e80 <memmove+0x20>
  return vdst;
}
     e85:	5e                   	pop    %esi
     e86:	89 d0                	mov    %edx,%eax
     e88:	5f                   	pop    %edi
     e89:	5d                   	pop    %ebp
     e8a:	c3                   	ret

00000e8b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e8b:	b8 01 00 00 00       	mov    $0x1,%eax
     e90:	cd 40                	int    $0x40
     e92:	c3                   	ret

00000e93 <exit>:
SYSCALL(exit)
     e93:	b8 02 00 00 00       	mov    $0x2,%eax
     e98:	cd 40                	int    $0x40
     e9a:	c3                   	ret

00000e9b <wait>:
SYSCALL(wait)
     e9b:	b8 03 00 00 00       	mov    $0x3,%eax
     ea0:	cd 40                	int    $0x40
     ea2:	c3                   	ret

00000ea3 <pipe>:
SYSCALL(pipe)
     ea3:	b8 04 00 00 00       	mov    $0x4,%eax
     ea8:	cd 40                	int    $0x40
     eaa:	c3                   	ret

00000eab <read>:
SYSCALL(read)
     eab:	b8 05 00 00 00       	mov    $0x5,%eax
     eb0:	cd 40                	int    $0x40
     eb2:	c3                   	ret

00000eb3 <write>:
SYSCALL(write)
     eb3:	b8 10 00 00 00       	mov    $0x10,%eax
     eb8:	cd 40                	int    $0x40
     eba:	c3                   	ret

00000ebb <close>:
SYSCALL(close)
     ebb:	b8 15 00 00 00       	mov    $0x15,%eax
     ec0:	cd 40                	int    $0x40
     ec2:	c3                   	ret

00000ec3 <kill>:
SYSCALL(kill)
     ec3:	b8 06 00 00 00       	mov    $0x6,%eax
     ec8:	cd 40                	int    $0x40
     eca:	c3                   	ret

00000ecb <exec>:
SYSCALL(exec)
     ecb:	b8 07 00 00 00       	mov    $0x7,%eax
     ed0:	cd 40                	int    $0x40
     ed2:	c3                   	ret

00000ed3 <open>:
SYSCALL(open)
     ed3:	b8 0f 00 00 00       	mov    $0xf,%eax
     ed8:	cd 40                	int    $0x40
     eda:	c3                   	ret

00000edb <mknod>:
SYSCALL(mknod)
     edb:	b8 11 00 00 00       	mov    $0x11,%eax
     ee0:	cd 40                	int    $0x40
     ee2:	c3                   	ret

00000ee3 <unlink>:
SYSCALL(unlink)
     ee3:	b8 12 00 00 00       	mov    $0x12,%eax
     ee8:	cd 40                	int    $0x40
     eea:	c3                   	ret

00000eeb <fstat>:
SYSCALL(fstat)
     eeb:	b8 08 00 00 00       	mov    $0x8,%eax
     ef0:	cd 40                	int    $0x40
     ef2:	c3                   	ret

00000ef3 <link>:
SYSCALL(link)
     ef3:	b8 13 00 00 00       	mov    $0x13,%eax
     ef8:	cd 40                	int    $0x40
     efa:	c3                   	ret

00000efb <mkdir>:
SYSCALL(mkdir)
     efb:	b8 14 00 00 00       	mov    $0x14,%eax
     f00:	cd 40                	int    $0x40
     f02:	c3                   	ret

00000f03 <chdir>:
SYSCALL(chdir)
     f03:	b8 09 00 00 00       	mov    $0x9,%eax
     f08:	cd 40                	int    $0x40
     f0a:	c3                   	ret

00000f0b <dup>:
SYSCALL(dup)
     f0b:	b8 0a 00 00 00       	mov    $0xa,%eax
     f10:	cd 40                	int    $0x40
     f12:	c3                   	ret

00000f13 <getpid>:
SYSCALL(getpid)
     f13:	b8 0b 00 00 00       	mov    $0xb,%eax
     f18:	cd 40                	int    $0x40
     f1a:	c3                   	ret

00000f1b <sbrk>:
SYSCALL(sbrk)
     f1b:	b8 0c 00 00 00       	mov    $0xc,%eax
     f20:	cd 40                	int    $0x40
     f22:	c3                   	ret

00000f23 <sleep>:
SYSCALL(sleep)
     f23:	b8 0d 00 00 00       	mov    $0xd,%eax
     f28:	cd 40                	int    $0x40
     f2a:	c3                   	ret

00000f2b <uptime>:
SYSCALL(uptime)
     f2b:	b8 0e 00 00 00       	mov    $0xe,%eax
     f30:	cd 40                	int    $0x40
     f32:	c3                   	ret
     f33:	66 90                	xchg   %ax,%ax
     f35:	66 90                	xchg   %ax,%ax
     f37:	66 90                	xchg   %ax,%ax
     f39:	66 90                	xchg   %ax,%ax
     f3b:	66 90                	xchg   %ax,%ax
     f3d:	66 90                	xchg   %ax,%ax
     f3f:	90                   	nop

00000f40 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f40:	55                   	push   %ebp
     f41:	89 e5                	mov    %esp,%ebp
     f43:	57                   	push   %edi
     f44:	56                   	push   %esi
     f45:	53                   	push   %ebx
     f46:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     f48:	89 d1                	mov    %edx,%ecx
{
     f4a:	83 ec 3c             	sub    $0x3c,%esp
     f4d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
     f50:	85 d2                	test   %edx,%edx
     f52:	0f 89 98 00 00 00    	jns    ff0 <printint+0xb0>
     f58:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     f5c:	0f 84 8e 00 00 00    	je     ff0 <printint+0xb0>
    x = -xx;
     f62:	f7 d9                	neg    %ecx
    neg = 1;
     f64:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
     f69:	89 45 c0             	mov    %eax,-0x40(%ebp)
     f6c:	31 f6                	xor    %esi,%esi
     f6e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f75:	00 
     f76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f7d:	00 
     f7e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
     f80:	89 c8                	mov    %ecx,%eax
     f82:	31 d2                	xor    %edx,%edx
     f84:	89 f7                	mov    %esi,%edi
     f86:	f7 f3                	div    %ebx
     f88:	8d 76 01             	lea    0x1(%esi),%esi
     f8b:	0f b6 92 b8 14 00 00 	movzbl 0x14b8(%edx),%edx
     f92:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
     f96:	89 ca                	mov    %ecx,%edx
     f98:	89 c1                	mov    %eax,%ecx
     f9a:	39 da                	cmp    %ebx,%edx
     f9c:	73 e2                	jae    f80 <printint+0x40>
  if(neg)
     f9e:	8b 45 c0             	mov    -0x40(%ebp),%eax
     fa1:	85 c0                	test   %eax,%eax
     fa3:	74 07                	je     fac <printint+0x6c>
    buf[i++] = '-';
     fa5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
     faa:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
     fac:	8d 5d d8             	lea    -0x28(%ebp),%ebx
     faf:	8b 75 c4             	mov    -0x3c(%ebp),%esi
     fb2:	01 df                	add    %ebx,%edi
     fb4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     fbb:	00 
     fbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
     fc0:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
     fc3:	83 ec 04             	sub    $0x4,%esp
     fc6:	88 45 d7             	mov    %al,-0x29(%ebp)
     fc9:	8d 45 d7             	lea    -0x29(%ebp),%eax
     fcc:	6a 01                	push   $0x1
     fce:	50                   	push   %eax
     fcf:	56                   	push   %esi
     fd0:	e8 de fe ff ff       	call   eb3 <write>
  while(--i >= 0)
     fd5:	89 f8                	mov    %edi,%eax
     fd7:	83 c4 10             	add    $0x10,%esp
     fda:	83 ef 01             	sub    $0x1,%edi
     fdd:	39 d8                	cmp    %ebx,%eax
     fdf:	75 df                	jne    fc0 <printint+0x80>
}
     fe1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fe4:	5b                   	pop    %ebx
     fe5:	5e                   	pop    %esi
     fe6:	5f                   	pop    %edi
     fe7:	5d                   	pop    %ebp
     fe8:	c3                   	ret
     fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     ff0:	31 c0                	xor    %eax,%eax
     ff2:	e9 72 ff ff ff       	jmp    f69 <printint+0x29>
     ff7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ffe:	00 
     fff:	90                   	nop

00001000 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	57                   	push   %edi
    1004:	56                   	push   %esi
    1005:	53                   	push   %ebx
    1006:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1009:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    100c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    100f:	0f b6 13             	movzbl (%ebx),%edx
    1012:	83 c3 01             	add    $0x1,%ebx
    1015:	84 d2                	test   %dl,%dl
    1017:	0f 84 a0 00 00 00    	je     10bd <printf+0xbd>
    101d:	8d 45 10             	lea    0x10(%ebp),%eax
    1020:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    1023:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    1026:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    1029:	eb 28                	jmp    1053 <printf+0x53>
    102b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1030:	83 ec 04             	sub    $0x4,%esp
    1033:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1036:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
    1039:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    103c:	6a 01                	push   $0x1
    103e:	50                   	push   %eax
    103f:	56                   	push   %esi
    1040:	e8 6e fe ff ff       	call   eb3 <write>
  for(i = 0; fmt[i]; i++){
    1045:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1049:	83 c4 10             	add    $0x10,%esp
    104c:	84 d2                	test   %dl,%dl
    104e:	74 6d                	je     10bd <printf+0xbd>
    c = fmt[i] & 0xff;
    1050:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
    1053:	83 f8 25             	cmp    $0x25,%eax
    1056:	75 d8                	jne    1030 <printf+0x30>
  for(i = 0; fmt[i]; i++){
    1058:	0f b6 13             	movzbl (%ebx),%edx
    105b:	84 d2                	test   %dl,%dl
    105d:	74 5e                	je     10bd <printf+0xbd>
    c = fmt[i] & 0xff;
    105f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    1062:	80 fa 25             	cmp    $0x25,%dl
    1065:	0f 84 1d 01 00 00    	je     1188 <printf+0x188>
    106b:	83 e8 63             	sub    $0x63,%eax
    106e:	83 f8 15             	cmp    $0x15,%eax
    1071:	77 0d                	ja     1080 <printf+0x80>
    1073:	ff 24 85 60 14 00 00 	jmp    *0x1460(,%eax,4)
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1080:	83 ec 04             	sub    $0x4,%esp
    1083:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1086:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
    1089:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    108d:	6a 01                	push   $0x1
    108f:	51                   	push   %ecx
    1090:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    1093:	56                   	push   %esi
    1094:	e8 1a fe ff ff       	call   eb3 <write>
        putc(fd, c);
    1099:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
    109d:	83 c4 0c             	add    $0xc,%esp
    10a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
    10a3:	6a 01                	push   $0x1
    10a5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    10a8:	51                   	push   %ecx
    10a9:	56                   	push   %esi
    10aa:	e8 04 fe ff ff       	call   eb3 <write>
  for(i = 0; fmt[i]; i++){
    10af:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    10b3:	83 c3 02             	add    $0x2,%ebx
    10b6:	83 c4 10             	add    $0x10,%esp
    10b9:	84 d2                	test   %dl,%dl
    10bb:	75 93                	jne    1050 <printf+0x50>
      }
      state = 0;
    }
  }
}
    10bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10c0:	5b                   	pop    %ebx
    10c1:	5e                   	pop    %esi
    10c2:	5f                   	pop    %edi
    10c3:	5d                   	pop    %ebp
    10c4:	c3                   	ret
    10c5:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    10c8:	83 ec 0c             	sub    $0xc,%esp
    10cb:	8b 17                	mov    (%edi),%edx
    10cd:	b9 10 00 00 00       	mov    $0x10,%ecx
    10d2:	89 f0                	mov    %esi,%eax
    10d4:	6a 00                	push   $0x0
        ap++;
    10d6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
    10d9:	e8 62 fe ff ff       	call   f40 <printint>
  for(i = 0; fmt[i]; i++){
    10de:	eb cf                	jmp    10af <printf+0xaf>
        s = (char*)*ap;
    10e0:	8b 07                	mov    (%edi),%eax
        ap++;
    10e2:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    10e5:	85 c0                	test   %eax,%eax
    10e7:	0f 84 b3 00 00 00    	je     11a0 <printf+0x1a0>
        while(*s != 0){
    10ed:	0f b6 10             	movzbl (%eax),%edx
    10f0:	84 d2                	test   %dl,%dl
    10f2:	0f 84 ba 00 00 00    	je     11b2 <printf+0x1b2>
    10f8:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    10fb:	89 c7                	mov    %eax,%edi
    10fd:	89 d0                	mov    %edx,%eax
    10ff:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1102:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    1105:	89 fb                	mov    %edi,%ebx
    1107:	89 cf                	mov    %ecx,%edi
    1109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1110:	83 ec 04             	sub    $0x4,%esp
    1113:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    1116:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    1119:	6a 01                	push   $0x1
    111b:	57                   	push   %edi
    111c:	56                   	push   %esi
    111d:	e8 91 fd ff ff       	call   eb3 <write>
        while(*s != 0){
    1122:	0f b6 03             	movzbl (%ebx),%eax
    1125:	83 c4 10             	add    $0x10,%esp
    1128:	84 c0                	test   %al,%al
    112a:	75 e4                	jne    1110 <printf+0x110>
    112c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
    112f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    1133:	83 c3 02             	add    $0x2,%ebx
    1136:	84 d2                	test   %dl,%dl
    1138:	0f 85 e5 fe ff ff    	jne    1023 <printf+0x23>
    113e:	e9 7a ff ff ff       	jmp    10bd <printf+0xbd>
    1143:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1148:	83 ec 0c             	sub    $0xc,%esp
    114b:	8b 17                	mov    (%edi),%edx
    114d:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1152:	89 f0                	mov    %esi,%eax
    1154:	6a 01                	push   $0x1
        ap++;
    1156:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
    1159:	e8 e2 fd ff ff       	call   f40 <printint>
  for(i = 0; fmt[i]; i++){
    115e:	e9 4c ff ff ff       	jmp    10af <printf+0xaf>
    1163:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1168:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    116a:	83 ec 04             	sub    $0x4,%esp
    116d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
    1170:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    1173:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1176:	6a 01                	push   $0x1
    1178:	51                   	push   %ecx
    1179:	56                   	push   %esi
    117a:	e8 34 fd ff ff       	call   eb3 <write>
  for(i = 0; fmt[i]; i++){
    117f:	e9 2b ff ff ff       	jmp    10af <printf+0xaf>
    1184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1188:	83 ec 04             	sub    $0x4,%esp
    118b:	88 55 e7             	mov    %dl,-0x19(%ebp)
    118e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1191:	6a 01                	push   $0x1
    1193:	e9 10 ff ff ff       	jmp    10a8 <printf+0xa8>
    1198:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    119f:	00 
          s = "(null)";
    11a0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    11a3:	b8 28 00 00 00       	mov    $0x28,%eax
    11a8:	bf 1f 14 00 00       	mov    $0x141f,%edi
    11ad:	e9 4d ff ff ff       	jmp    10ff <printf+0xff>
  for(i = 0; fmt[i]; i++){
    11b2:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    11b6:	83 c3 02             	add    $0x2,%ebx
    11b9:	84 d2                	test   %dl,%dl
    11bb:	0f 85 8f fe ff ff    	jne    1050 <printf+0x50>
    11c1:	e9 f7 fe ff ff       	jmp    10bd <printf+0xbd>
    11c6:	66 90                	xchg   %ax,%ax
    11c8:	66 90                	xchg   %ax,%ax
    11ca:	66 90                	xchg   %ax,%ax
    11cc:	66 90                	xchg   %ax,%ax
    11ce:	66 90                	xchg   %ax,%ax
    11d0:	66 90                	xchg   %ax,%ax
    11d2:	66 90                	xchg   %ax,%ax
    11d4:	66 90                	xchg   %ax,%ax
    11d6:	66 90                	xchg   %ax,%ax
    11d8:	66 90                	xchg   %ax,%ax
    11da:	66 90                	xchg   %ax,%ax
    11dc:	66 90                	xchg   %ax,%ax
    11de:	66 90                	xchg   %ax,%ax

000011e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11e1:	a1 04 1b 00 00       	mov    0x1b04,%eax
{
    11e6:	89 e5                	mov    %esp,%ebp
    11e8:	57                   	push   %edi
    11e9:	56                   	push   %esi
    11ea:	53                   	push   %ebx
    11eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    11ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11f1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    11f8:	00 
    11f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1200:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1202:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1204:	39 ca                	cmp    %ecx,%edx
    1206:	73 30                	jae    1238 <free+0x58>
    1208:	39 c1                	cmp    %eax,%ecx
    120a:	72 04                	jb     1210 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    120c:	39 c2                	cmp    %eax,%edx
    120e:	72 f0                	jb     1200 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1210:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1213:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1216:	39 f8                	cmp    %edi,%eax
    1218:	74 36                	je     1250 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    121a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    121d:	8b 42 04             	mov    0x4(%edx),%eax
    1220:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1223:	39 f1                	cmp    %esi,%ecx
    1225:	74 40                	je     1267 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    1227:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    1229:	5b                   	pop    %ebx
  freep = p;
    122a:	89 15 04 1b 00 00    	mov    %edx,0x1b04
}
    1230:	5e                   	pop    %esi
    1231:	5f                   	pop    %edi
    1232:	5d                   	pop    %ebp
    1233:	c3                   	ret
    1234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1238:	39 c2                	cmp    %eax,%edx
    123a:	72 c4                	jb     1200 <free+0x20>
    123c:	39 c1                	cmp    %eax,%ecx
    123e:	73 c0                	jae    1200 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    1240:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1243:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1246:	39 f8                	cmp    %edi,%eax
    1248:	75 d0                	jne    121a <free+0x3a>
    124a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    1250:	03 70 04             	add    0x4(%eax),%esi
    1253:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1256:	8b 02                	mov    (%edx),%eax
    1258:	8b 00                	mov    (%eax),%eax
    125a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    125d:	8b 42 04             	mov    0x4(%edx),%eax
    1260:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1263:	39 f1                	cmp    %esi,%ecx
    1265:	75 c0                	jne    1227 <free+0x47>
    p->s.size += bp->s.size;
    1267:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    126a:	89 15 04 1b 00 00    	mov    %edx,0x1b04
    p->s.size += bp->s.size;
    1270:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    1273:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    1276:	89 0a                	mov    %ecx,(%edx)
}
    1278:	5b                   	pop    %ebx
    1279:	5e                   	pop    %esi
    127a:	5f                   	pop    %edi
    127b:	5d                   	pop    %ebp
    127c:	c3                   	ret
    127d:	8d 76 00             	lea    0x0(%esi),%esi

00001280 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1280:	55                   	push   %ebp
    1281:	89 e5                	mov    %esp,%ebp
    1283:	57                   	push   %edi
    1284:	56                   	push   %esi
    1285:	53                   	push   %ebx
    1286:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1289:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    128c:	8b 15 04 1b 00 00    	mov    0x1b04,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1292:	8d 78 07             	lea    0x7(%eax),%edi
    1295:	c1 ef 03             	shr    $0x3,%edi
    1298:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    129b:	85 d2                	test   %edx,%edx
    129d:	0f 84 8d 00 00 00    	je     1330 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12a3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    12a5:	8b 48 04             	mov    0x4(%eax),%ecx
    12a8:	39 f9                	cmp    %edi,%ecx
    12aa:	73 64                	jae    1310 <malloc+0x90>
  if(nu < 4096)
    12ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
    12b1:	39 df                	cmp    %ebx,%edi
    12b3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    12b6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    12bd:	eb 0a                	jmp    12c9 <malloc+0x49>
    12bf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    12c2:	8b 48 04             	mov    0x4(%eax),%ecx
    12c5:	39 f9                	cmp    %edi,%ecx
    12c7:	73 47                	jae    1310 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    12c9:	89 c2                	mov    %eax,%edx
    12cb:	39 05 04 1b 00 00    	cmp    %eax,0x1b04
    12d1:	75 ed                	jne    12c0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    12d3:	83 ec 0c             	sub    $0xc,%esp
    12d6:	56                   	push   %esi
    12d7:	e8 3f fc ff ff       	call   f1b <sbrk>
  if(p == (char*)-1)
    12dc:	83 c4 10             	add    $0x10,%esp
    12df:	83 f8 ff             	cmp    $0xffffffff,%eax
    12e2:	74 1c                	je     1300 <malloc+0x80>
  hp->s.size = nu;
    12e4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    12e7:	83 ec 0c             	sub    $0xc,%esp
    12ea:	83 c0 08             	add    $0x8,%eax
    12ed:	50                   	push   %eax
    12ee:	e8 ed fe ff ff       	call   11e0 <free>
  return freep;
    12f3:	8b 15 04 1b 00 00    	mov    0x1b04,%edx
      if((p = morecore(nunits)) == 0)
    12f9:	83 c4 10             	add    $0x10,%esp
    12fc:	85 d2                	test   %edx,%edx
    12fe:	75 c0                	jne    12c0 <malloc+0x40>
        return 0;
  }
}
    1300:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1303:	31 c0                	xor    %eax,%eax
}
    1305:	5b                   	pop    %ebx
    1306:	5e                   	pop    %esi
    1307:	5f                   	pop    %edi
    1308:	5d                   	pop    %ebp
    1309:	c3                   	ret
    130a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1310:	39 cf                	cmp    %ecx,%edi
    1312:	74 4c                	je     1360 <malloc+0xe0>
        p->s.size -= nunits;
    1314:	29 f9                	sub    %edi,%ecx
    1316:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1319:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    131c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    131f:	89 15 04 1b 00 00    	mov    %edx,0x1b04
}
    1325:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1328:	83 c0 08             	add    $0x8,%eax
}
    132b:	5b                   	pop    %ebx
    132c:	5e                   	pop    %esi
    132d:	5f                   	pop    %edi
    132e:	5d                   	pop    %ebp
    132f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    1330:	c7 05 04 1b 00 00 08 	movl   $0x1b08,0x1b04
    1337:	1b 00 00 
    base.s.size = 0;
    133a:	b8 08 1b 00 00       	mov    $0x1b08,%eax
    base.s.ptr = freep = prevp = &base;
    133f:	c7 05 08 1b 00 00 08 	movl   $0x1b08,0x1b08
    1346:	1b 00 00 
    base.s.size = 0;
    1349:	c7 05 0c 1b 00 00 00 	movl   $0x0,0x1b0c
    1350:	00 00 00 
    if(p->s.size >= nunits){
    1353:	e9 54 ff ff ff       	jmp    12ac <malloc+0x2c>
    1358:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    135f:	00 
        prevp->s.ptr = p->s.ptr;
    1360:	8b 08                	mov    (%eax),%ecx
    1362:	89 0a                	mov    %ecx,(%edx)
    1364:	eb b9                	jmp    131f <malloc+0x9f>
