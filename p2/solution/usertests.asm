
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 d6 4d 00 00       	push   $0x4dd6
      16:	6a 01                	push   $0x1
      18:	e8 63 3a 00 00       	call   3a80 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 ea 4d 00 00       	push   $0x4dea
      26:	e8 28 39 00 00       	call   3953 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 5c 55 00 00       	push   $0x555c
      39:	6a 01                	push   $0x1
      3b:	e8 40 3a 00 00       	call   3a80 <printf>
    exit();
      40:	e8 ce 38 00 00       	call   3913 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 ea 4d 00 00       	push   $0x4dea
      51:	e8 fd 38 00 00       	call   3953 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 dd 38 00 00       	call   393b <close>

  argptest();
      5e:	e8 cd 35 00 00       	call   3630 <argptest>
  createdelete();
      63:	e8 c8 11 00 00       	call   1230 <createdelete>
  linkunlink();
      68:	e8 73 1a 00 00       	call   1ae0 <linkunlink>
  concreate();
      6d:	e8 6e 17 00 00       	call   17e0 <concreate>
  fourfiles();
      72:	e8 a9 0f 00 00       	call   1020 <fourfiles>
  sharedfd();
      77:	e8 e4 0d 00 00       	call   e60 <sharedfd>

  bigargtest();
      7c:	e8 4f 32 00 00       	call   32d0 <bigargtest>
  bigwrite();
      81:	e8 7a 23 00 00       	call   2400 <bigwrite>
  bigargtest();
      86:	e8 45 32 00 00       	call   32d0 <bigargtest>
  bsstest();
      8b:	e8 c0 31 00 00       	call   3250 <bsstest>
  sbrktest();
      90:	e8 bb 2c 00 00       	call   2d50 <sbrktest>
  validatetest();
      95:	e8 06 31 00 00       	call   31a0 <validatetest>

  opentest();
      9a:	e8 61 03 00 00       	call   400 <opentest>
  writetest();
      9f:	e8 ec 03 00 00       	call   490 <writetest>
  writetest1();
      a4:	e8 b7 05 00 00       	call   660 <writetest1>
  createtest();
      a9:	e8 82 07 00 00       	call   830 <createtest>

  openiputtest();
      ae:	e8 4d 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 ce 0c 00 00       	call   d90 <mem>
  pipe1();
      c2:	e8 49 09 00 00       	call   a10 <pipe1>
  preempt();
      c7:	e8 e4 0a 00 00       	call   bb0 <preempt>
  exitwait();
      cc:	e8 3f 0c 00 00       	call   d10 <exitwait>

  rmdot();
      d1:	e8 2a 27 00 00       	call   2800 <rmdot>
  fourteen();
      d6:	e8 e5 25 00 00       	call   26c0 <fourteen>
  bigfile();
      db:	e8 00 24 00 00       	call   24e0 <bigfile>
  subdir();
      e0:	e8 3b 1c 00 00       	call   1d20 <subdir>
  linktest();
      e5:	e8 e6 14 00 00       	call   15d0 <linktest>
  unlinkread();
      ea:	e8 51 13 00 00       	call   1440 <unlinkread>
  dirfile();
      ef:	e8 8c 28 00 00       	call   2980 <dirfile>
  iref();
      f4:	e8 87 2a 00 00       	call   2b80 <iref>
  forktest();
      f9:	e8 a2 2b 00 00       	call   2ca0 <forktest>
  bigdir(); // slow
      fe:	e8 ed 1a 00 00       	call   1bf0 <bigdir>

  uio();
     103:	e8 b8 34 00 00       	call   35c0 <uio>

  exectest();
     108:	e8 b3 08 00 00       	call   9c0 <exectest>

  exit();
     10d:	e8 01 38 00 00       	call   3913 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 7c 3e 00 00       	push   $0x3e7c
     12b:	ff 35 d8 5e 00 00    	push   0x5ed8
     131:	e8 4a 39 00 00       	call   3a80 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 0f 3e 00 00 	movl   $0x3e0f,(%esp)
     13d:	e8 39 38 00 00       	call   397b <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 5a                	js     1a3 <iputtest+0x83>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 0f 3e 00 00       	push   $0x3e0f
     151:	e8 2d 38 00 00       	call   3983 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 82 00 00 00    	js     1e3 <iputtest+0xc3>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 0c 3e 00 00       	push   $0x3e0c
     169:	e8 f5 37 00 00       	call   3963 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 57                	js     1cc <iputtest+0xac>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 31 3e 00 00       	push   $0x3e31
     17d:	e8 01 38 00 00       	call   3983 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	89 c2                	mov    %eax,%edx
    printf(stdout, "chdir / failed\n");
     187:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(chdir("/") < 0){
     18c:	85 d2                	test   %edx,%edx
     18e:	78 2a                	js     1ba <iputtest+0x9a>
  printf(stdout, "iput test ok\n");
     190:	83 ec 08             	sub    $0x8,%esp
     193:	68 b4 3e 00 00       	push   $0x3eb4
     198:	50                   	push   %eax
     199:	e8 e2 38 00 00       	call   3a80 <printf>
}
     19e:	83 c4 10             	add    $0x10,%esp
     1a1:	c9                   	leave
     1a2:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     1a3:	50                   	push   %eax
     1a4:	50                   	push   %eax
     1a5:	68 e8 3d 00 00       	push   $0x3de8
     1aa:	ff 35 d8 5e 00 00    	push   0x5ed8
     1b0:	e8 cb 38 00 00       	call   3a80 <printf>
    exit();
     1b5:	e8 59 37 00 00       	call   3913 <exit>
    printf(stdout, "chdir / failed\n");
     1ba:	52                   	push   %edx
     1bb:	52                   	push   %edx
     1bc:	68 33 3e 00 00       	push   $0x3e33
     1c1:	50                   	push   %eax
     1c2:	e8 b9 38 00 00       	call   3a80 <printf>
    exit();
     1c7:	e8 47 37 00 00       	call   3913 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cc:	51                   	push   %ecx
     1cd:	51                   	push   %ecx
     1ce:	68 17 3e 00 00       	push   $0x3e17
     1d3:	ff 35 d8 5e 00 00    	push   0x5ed8
     1d9:	e8 a2 38 00 00       	call   3a80 <printf>
    exit();
     1de:	e8 30 37 00 00       	call   3913 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e3:	50                   	push   %eax
     1e4:	50                   	push   %eax
     1e5:	68 f6 3d 00 00       	push   $0x3df6
     1ea:	ff 35 d8 5e 00 00    	push   0x5ed8
     1f0:	e8 8b 38 00 00       	call   3a80 <printf>
    exit();
     1f5:	e8 19 37 00 00       	call   3913 <exit>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 43 3e 00 00       	push   $0x3e43
     20b:	ff 35 d8 5e 00 00    	push   0x5ed8
     211:	e8 6a 38 00 00       	call   3a80 <printf>
  pid = fork();
     216:	e8 f0 36 00 00       	call   390b <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
  if(pid == 0){
     226:	75 50                	jne    278 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 0f 3e 00 00       	push   $0x3e0f
     230:	e8 46 37 00 00       	call   397b <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 87 00 00 00    	js     2c7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 0f 3e 00 00       	push   $0x3e0f
     248:	e8 36 37 00 00       	call   3983 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	0f 88 86 00 00 00    	js     2de <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 0c 3e 00 00       	push   $0x3e0c
     260:	e8 fe 36 00 00       	call   3963 <unlink>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	78 2c                	js     298 <exitiputtest+0x98>
    exit();
     26c:	e8 a2 36 00 00       	call   3913 <exit>
     271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
     278:	e8 9e 36 00 00       	call   391b <wait>
  printf(stdout, "exitiput test ok\n");
     27d:	83 ec 08             	sub    $0x8,%esp
     280:	68 66 3e 00 00       	push   $0x3e66
     285:	ff 35 d8 5e 00 00    	push   0x5ed8
     28b:	e8 f0 37 00 00       	call   3a80 <printf>
}
     290:	83 c4 10             	add    $0x10,%esp
     293:	c9                   	leave
     294:	c3                   	ret
     295:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 17 3e 00 00       	push   $0x3e17
     2a0:	ff 35 d8 5e 00 00    	push   0x5ed8
     2a6:	e8 d5 37 00 00       	call   3a80 <printf>
      exit();
     2ab:	e8 63 36 00 00       	call   3913 <exit>
    printf(stdout, "fork failed\n");
     2b0:	51                   	push   %ecx
     2b1:	51                   	push   %ecx
     2b2:	68 29 4d 00 00       	push   $0x4d29
     2b7:	ff 35 d8 5e 00 00    	push   0x5ed8
     2bd:	e8 be 37 00 00       	call   3a80 <printf>
    exit();
     2c2:	e8 4c 36 00 00       	call   3913 <exit>
      printf(stdout, "mkdir failed\n");
     2c7:	52                   	push   %edx
     2c8:	52                   	push   %edx
     2c9:	68 e8 3d 00 00       	push   $0x3de8
     2ce:	ff 35 d8 5e 00 00    	push   0x5ed8
     2d4:	e8 a7 37 00 00       	call   3a80 <printf>
      exit();
     2d9:	e8 35 36 00 00       	call   3913 <exit>
      printf(stdout, "child chdir failed\n");
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 52 3e 00 00       	push   $0x3e52
     2e5:	ff 35 d8 5e 00 00    	push   0x5ed8
     2eb:	e8 90 37 00 00       	call   3a80 <printf>
      exit();
     2f0:	e8 1e 36 00 00       	call   3913 <exit>
     2f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     2fc:	00 
     2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <openiputtest>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     306:	68 78 3e 00 00       	push   $0x3e78
     30b:	ff 35 d8 5e 00 00    	push   0x5ed8
     311:	e8 6a 37 00 00       	call   3a80 <printf>
  if(mkdir("oidir") < 0){
     316:	c7 04 24 87 3e 00 00 	movl   $0x3e87,(%esp)
     31d:	e8 59 36 00 00       	call   397b <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 9f 00 00 00    	js     3cc <openiputtest+0xcc>
  pid = fork();
     32d:	e8 d9 35 00 00       	call   390b <fork>
  if(pid < 0){
     332:	85 c0                	test   %eax,%eax
     334:	78 7f                	js     3b5 <openiputtest+0xb5>
  if(pid == 0){
     336:	75 38                	jne    370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     338:	83 ec 08             	sub    $0x8,%esp
     33b:	6a 02                	push   $0x2
     33d:	68 87 3e 00 00       	push   $0x3e87
     342:	e8 0c 36 00 00       	call   3953 <open>
    if(fd >= 0){
     347:	83 c4 10             	add    $0x10,%esp
     34a:	85 c0                	test   %eax,%eax
     34c:	78 62                	js     3b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     34e:	83 ec 08             	sub    $0x8,%esp
     351:	68 10 4e 00 00       	push   $0x4e10
     356:	ff 35 d8 5e 00 00    	push   0x5ed8
     35c:	e8 1f 37 00 00       	call   3a80 <printf>
      exit();
     361:	e8 ad 35 00 00       	call   3913 <exit>
     366:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     36d:	00 
     36e:	66 90                	xchg   %ax,%ax
  sleep(1);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 29 36 00 00       	call   39a3 <sleep>
  if(unlink("oidir") != 0){
     37a:	c7 04 24 87 3e 00 00 	movl   $0x3e87,(%esp)
     381:	e8 dd 35 00 00       	call   3963 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
  wait();
     38d:	e8 89 35 00 00       	call   391b <wait>
  printf(stdout, "openiput test ok\n");
     392:	83 ec 08             	sub    $0x8,%esp
     395:	68 b0 3e 00 00       	push   $0x3eb0
     39a:	ff 35 d8 5e 00 00    	push   0x5ed8
     3a0:	e8 db 36 00 00       	call   3a80 <printf>
}
     3a5:	83 c4 10             	add    $0x10,%esp
     3a8:	c9                   	leave
     3a9:	c3                   	ret
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3b0:	e8 5e 35 00 00       	call   3913 <exit>
    printf(stdout, "fork failed\n");
     3b5:	52                   	push   %edx
     3b6:	52                   	push   %edx
     3b7:	68 29 4d 00 00       	push   $0x4d29
     3bc:	ff 35 d8 5e 00 00    	push   0x5ed8
     3c2:	e8 b9 36 00 00       	call   3a80 <printf>
    exit();
     3c7:	e8 47 35 00 00       	call   3913 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3cc:	51                   	push   %ecx
     3cd:	51                   	push   %ecx
     3ce:	68 8d 3e 00 00       	push   $0x3e8d
     3d3:	ff 35 d8 5e 00 00    	push   0x5ed8
     3d9:	e8 a2 36 00 00       	call   3a80 <printf>
    exit();
     3de:	e8 30 35 00 00       	call   3913 <exit>
    printf(stdout, "unlink failed\n");
     3e3:	50                   	push   %eax
     3e4:	50                   	push   %eax
     3e5:	68 a1 3e 00 00       	push   $0x3ea1
     3ea:	ff 35 d8 5e 00 00    	push   0x5ed8
     3f0:	e8 8b 36 00 00       	call   3a80 <printf>
    exit();
     3f5:	e8 19 35 00 00       	call   3913 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     406:	68 c2 3e 00 00       	push   $0x3ec2
     40b:	ff 35 d8 5e 00 00    	push   0x5ed8
     411:	e8 6a 36 00 00       	call   3a80 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 cd 3e 00 00       	push   $0x3ecd
     41f:	e8 2f 35 00 00       	call   3953 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 38                	js     463 <opentest+0x63>
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 07 35 00 00       	call   393b <close>
  fd = open("doesnotexist", 0);
     434:	59                   	pop    %ecx
     435:	58                   	pop    %eax
     436:	6a 00                	push   $0x0
     438:	68 e5 3e 00 00       	push   $0x3ee5
     43d:	e8 11 35 00 00       	call   3953 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
  fd = open("doesnotexist", 0);
     445:	89 c2                	mov    %eax,%edx
    printf(stdout, "open doesnotexist succeeded!\n");
     447:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(fd >= 0){
     44c:	85 d2                	test   %edx,%edx
     44e:	79 2a                	jns    47a <opentest+0x7a>
  printf(stdout, "open test ok\n");
     450:	83 ec 08             	sub    $0x8,%esp
     453:	68 10 3f 00 00       	push   $0x3f10
     458:	50                   	push   %eax
     459:	e8 22 36 00 00       	call   3a80 <printf>
}
     45e:	83 c4 10             	add    $0x10,%esp
     461:	c9                   	leave
     462:	c3                   	ret
    printf(stdout, "open echo failed!\n");
     463:	50                   	push   %eax
     464:	50                   	push   %eax
     465:	68 d2 3e 00 00       	push   $0x3ed2
     46a:	ff 35 d8 5e 00 00    	push   0x5ed8
     470:	e8 0b 36 00 00       	call   3a80 <printf>
    exit();
     475:	e8 99 34 00 00       	call   3913 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     47a:	52                   	push   %edx
     47b:	52                   	push   %edx
     47c:	68 f2 3e 00 00       	push   $0x3ef2
     481:	50                   	push   %eax
     482:	e8 f9 35 00 00       	call   3a80 <printf>
    exit();
     487:	e8 87 34 00 00       	call   3913 <exit>
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 1e 3f 00 00       	push   $0x3f1e
     49d:	ff 35 d8 5e 00 00    	push   0x5ed8
     4a3:	e8 d8 35 00 00       	call   3a80 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	59                   	pop    %ecx
     4a9:	5b                   	pop    %ebx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 2f 3f 00 00       	push   $0x3f2f
     4b4:	e8 9a 34 00 00       	call   3953 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_CREATE|O_RDWR);
     4bc:	89 c6                	mov    %eax,%esi
    printf(stdout, "creat small succeeded; ok\n");
     4be:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(fd >= 0){
     4c3:	85 f6                	test   %esi,%esi
     4c5:	0f 88 77 01 00 00    	js     642 <writetest+0x1b2>
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 100; i++){
     4ce:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4d0:	68 35 3f 00 00       	push   $0x3f35
     4d5:	50                   	push   %eax
     4d6:	e8 a5 35 00 00       	call   3a80 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 6c 3f 00 00       	push   $0x3f6c
     4ea:	56                   	push   %esi
     4eb:	e8 43 34 00 00       	call   3933 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 de 00 00 00    	jne    5da <writetest+0x14a>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 77 3f 00 00       	push   $0x3f77
     506:	56                   	push   %esi
     507:	e8 27 34 00 00       	call   3933 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 db 00 00 00    	jne    5f3 <writetest+0x163>
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 82 3f 00 00       	push   $0x3f82
     528:	ff 35 d8 5e 00 00    	push   0x5ed8
     52e:	e8 4d 35 00 00       	call   3a80 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 00 34 00 00       	call   393b <close>
  fd = open("small", O_RDONLY);
     53b:	5e                   	pop    %esi
     53c:	58                   	pop    %eax
     53d:	6a 00                	push   $0x0
     53f:	68 2f 3f 00 00       	push   $0x3f2f
     544:	e8 0a 34 00 00       	call   3953 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     54c:	89 c3                	mov    %eax,%ebx
    printf(stdout, "open small succeeded ok\n");
     54e:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(fd >= 0){
     553:	85 db                	test   %ebx,%ebx
     555:	0f 88 b1 00 00 00    	js     60c <writetest+0x17c>
    printf(stdout, "open small succeeded ok\n");
     55b:	83 ec 08             	sub    $0x8,%esp
     55e:	68 8d 3f 00 00       	push   $0x3f8d
     563:	50                   	push   %eax
     564:	e8 17 35 00 00       	call   3a80 <printf>
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 20 86 00 00       	push   $0x8620
     576:	53                   	push   %ebx
     577:	e8 af 33 00 00       	call   392b <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
  i = read(fd, buf, 2000);
     57f:	89 c2                	mov    %eax,%edx
    printf(stdout, "read succeeded ok\n");
     581:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(i == 2000){
     586:	81 fa d0 07 00 00    	cmp    $0x7d0,%edx
     58c:	0f 85 8c 00 00 00    	jne    61e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     592:	83 ec 08             	sub    $0x8,%esp
     595:	68 c1 3f 00 00       	push   $0x3fc1
     59a:	50                   	push   %eax
     59b:	e8 e0 34 00 00       	call   3a80 <printf>
  close(fd);
     5a0:	89 1c 24             	mov    %ebx,(%esp)
     5a3:	e8 93 33 00 00       	call   393b <close>
  if(unlink("small") < 0){
     5a8:	c7 04 24 2f 3f 00 00 	movl   $0x3f2f,(%esp)
     5af:	e8 af 33 00 00       	call   3963 <unlink>
     5b4:	83 c4 10             	add    $0x10,%esp
     5b7:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink small failed\n");
     5b9:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(unlink("small") < 0){
     5be:	85 d2                	test   %edx,%edx
     5c0:	78 6e                	js     630 <writetest+0x1a0>
  printf(stdout, "small file test ok\n");
     5c2:	83 ec 08             	sub    $0x8,%esp
     5c5:	68 e9 3f 00 00       	push   $0x3fe9
     5ca:	50                   	push   %eax
     5cb:	e8 b0 34 00 00       	call   3a80 <printf>
}
     5d0:	83 c4 10             	add    $0x10,%esp
     5d3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d6:	5b                   	pop    %ebx
     5d7:	5e                   	pop    %esi
     5d8:	5d                   	pop    %ebp
     5d9:	c3                   	ret
      printf(stdout, "error: write aa %d new file failed\n", i);
     5da:	83 ec 04             	sub    $0x4,%esp
     5dd:	53                   	push   %ebx
     5de:	68 34 4e 00 00       	push   $0x4e34
     5e3:	ff 35 d8 5e 00 00    	push   0x5ed8
     5e9:	e8 92 34 00 00       	call   3a80 <printf>
      exit();
     5ee:	e8 20 33 00 00       	call   3913 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5f3:	83 ec 04             	sub    $0x4,%esp
     5f6:	53                   	push   %ebx
     5f7:	68 58 4e 00 00       	push   $0x4e58
     5fc:	ff 35 d8 5e 00 00    	push   0x5ed8
     602:	e8 79 34 00 00       	call   3a80 <printf>
      exit();
     607:	e8 07 33 00 00       	call   3913 <exit>
    printf(stdout, "error: open small failed!\n");
     60c:	53                   	push   %ebx
     60d:	53                   	push   %ebx
     60e:	68 a6 3f 00 00       	push   $0x3fa6
     613:	50                   	push   %eax
     614:	e8 67 34 00 00       	call   3a80 <printf>
    exit();
     619:	e8 f5 32 00 00       	call   3913 <exit>
    printf(stdout, "read failed\n");
     61e:	51                   	push   %ecx
     61f:	51                   	push   %ecx
     620:	68 ed 42 00 00       	push   $0x42ed
     625:	50                   	push   %eax
     626:	e8 55 34 00 00       	call   3a80 <printf>
    exit();
     62b:	e8 e3 32 00 00       	call   3913 <exit>
    printf(stdout, "unlink small failed\n");
     630:	52                   	push   %edx
     631:	52                   	push   %edx
     632:	68 d4 3f 00 00       	push   $0x3fd4
     637:	50                   	push   %eax
     638:	e8 43 34 00 00       	call   3a80 <printf>
    exit();
     63d:	e8 d1 32 00 00       	call   3913 <exit>
    printf(stdout, "error: creat small failed!\n");
     642:	52                   	push   %edx
     643:	52                   	push   %edx
     644:	68 50 3f 00 00       	push   $0x3f50
     649:	50                   	push   %eax
     64a:	e8 31 34 00 00       	call   3a80 <printf>
    exit();
     64f:	e8 bf 32 00 00       	call   3913 <exit>
     654:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     65b:	00 
     65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     665:	83 ec 08             	sub    $0x8,%esp
     668:	68 fd 3f 00 00       	push   $0x3ffd
     66d:	ff 35 d8 5e 00 00    	push   0x5ed8
     673:	e8 08 34 00 00       	call   3a80 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     678:	58                   	pop    %eax
     679:	5a                   	pop    %edx
     67a:	68 02 02 00 00       	push   $0x202
     67f:	68 77 40 00 00       	push   $0x4077
     684:	e8 ca 32 00 00       	call   3953 <open>
  if(fd < 0){
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	0f 88 67 01 00 00    	js     7fb <writetest1+0x19b>
     694:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     696:	31 db                	xor    %ebx,%ebx
     698:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     69f:	00 
    if(write(fd, buf, 512) != 512){
     6a0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6a3:	89 1d 20 86 00 00    	mov    %ebx,0x8620
    if(write(fd, buf, 512) != 512){
     6a9:	68 00 02 00 00       	push   $0x200
     6ae:	68 20 86 00 00       	push   $0x8620
     6b3:	56                   	push   %esi
     6b4:	e8 7a 32 00 00       	call   3933 <write>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c1:	0f 85 b9 00 00 00    	jne    780 <writetest1+0x120>
  for(i = 0; i < MAXFILE; i++){
     6c7:	83 c3 01             	add    $0x1,%ebx
     6ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d0:	75 ce                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d2:	83 ec 0c             	sub    $0xc,%esp
     6d5:	56                   	push   %esi
     6d6:	e8 60 32 00 00       	call   393b <close>
  fd = open("big", O_RDONLY);
     6db:	5e                   	pop    %esi
     6dc:	58                   	pop    %eax
     6dd:	6a 00                	push   $0x0
     6df:	68 77 40 00 00       	push   $0x4077
     6e4:	e8 6a 32 00 00       	call   3953 <open>
  if(fd < 0){
     6e9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     6ec:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     6ee:	85 c0                	test   %eax,%eax
     6f0:	0f 88 ee 00 00 00    	js     7e4 <writetest1+0x184>
  n = 0;
     6f6:	31 f6                	xor    %esi,%esi
     6f8:	eb 21                	jmp    71b <writetest1+0xbb>
     6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 a5 00 00 00    	jne    7b0 <writetest1+0x150>
    if(((int*)buf)[0] != n){
     70b:	a1 20 86 00 00       	mov    0x8620,%eax
     710:	39 f0                	cmp    %esi,%eax
     712:	0f 85 81 00 00 00    	jne    799 <writetest1+0x139>
    n++;
     718:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
     71b:	83 ec 04             	sub    $0x4,%esp
     71e:	68 00 02 00 00       	push   $0x200
     723:	68 20 86 00 00       	push   $0x8620
     728:	53                   	push   %ebx
     729:	e8 fd 31 00 00       	call   392b <read>
    if(i == 0){
     72e:	83 c4 10             	add    $0x10,%esp
     731:	85 c0                	test   %eax,%eax
     733:	75 cb                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     735:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     73b:	0f 84 88 00 00 00    	je     7c9 <writetest1+0x169>
  close(fd);
     741:	83 ec 0c             	sub    $0xc,%esp
     744:	53                   	push   %ebx
     745:	e8 f1 31 00 00       	call   393b <close>
  if(unlink("big") < 0){
     74a:	c7 04 24 77 40 00 00 	movl   $0x4077,(%esp)
     751:	e8 0d 32 00 00       	call   3963 <unlink>
     756:	83 c4 10             	add    $0x10,%esp
     759:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink big failed\n");
     75b:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(unlink("big") < 0){
     760:	85 d2                	test   %edx,%edx
     762:	0f 88 aa 00 00 00    	js     812 <writetest1+0x1b2>
  printf(stdout, "big files ok\n");
     768:	83 ec 08             	sub    $0x8,%esp
     76b:	68 9e 40 00 00       	push   $0x409e
     770:	50                   	push   %eax
     771:	e8 0a 33 00 00       	call   3a80 <printf>
}
     776:	83 c4 10             	add    $0x10,%esp
     779:	8d 65 f8             	lea    -0x8(%ebp),%esp
     77c:	5b                   	pop    %ebx
     77d:	5e                   	pop    %esi
     77e:	5d                   	pop    %ebp
     77f:	c3                   	ret
      printf(stdout, "error: write big file failed\n", i);
     780:	83 ec 04             	sub    $0x4,%esp
     783:	53                   	push   %ebx
     784:	68 27 40 00 00       	push   $0x4027
     789:	ff 35 d8 5e 00 00    	push   0x5ed8
     78f:	e8 ec 32 00 00       	call   3a80 <printf>
      exit();
     794:	e8 7a 31 00 00       	call   3913 <exit>
      printf(stdout, "read content of block %d is %d\n",
     799:	50                   	push   %eax
     79a:	56                   	push   %esi
     79b:	68 7c 4e 00 00       	push   $0x4e7c
     7a0:	ff 35 d8 5e 00 00    	push   0x5ed8
     7a6:	e8 d5 32 00 00       	call   3a80 <printf>
      exit();
     7ab:	e8 63 31 00 00       	call   3913 <exit>
      printf(stdout, "read failed %d\n", i);
     7b0:	83 ec 04             	sub    $0x4,%esp
     7b3:	50                   	push   %eax
     7b4:	68 7b 40 00 00       	push   $0x407b
     7b9:	ff 35 d8 5e 00 00    	push   0x5ed8
     7bf:	e8 bc 32 00 00       	call   3a80 <printf>
      exit();
     7c4:	e8 4a 31 00 00       	call   3913 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7c9:	51                   	push   %ecx
     7ca:	68 8b 00 00 00       	push   $0x8b
     7cf:	68 5e 40 00 00       	push   $0x405e
     7d4:	ff 35 d8 5e 00 00    	push   0x5ed8
     7da:	e8 a1 32 00 00       	call   3a80 <printf>
        exit();
     7df:	e8 2f 31 00 00       	call   3913 <exit>
    printf(stdout, "error: open big failed!\n");
     7e4:	53                   	push   %ebx
     7e5:	53                   	push   %ebx
     7e6:	68 45 40 00 00       	push   $0x4045
     7eb:	ff 35 d8 5e 00 00    	push   0x5ed8
     7f1:	e8 8a 32 00 00       	call   3a80 <printf>
    exit();
     7f6:	e8 18 31 00 00       	call   3913 <exit>
    printf(stdout, "error: creat big failed!\n");
     7fb:	50                   	push   %eax
     7fc:	50                   	push   %eax
     7fd:	68 0d 40 00 00       	push   $0x400d
     802:	ff 35 d8 5e 00 00    	push   0x5ed8
     808:	e8 73 32 00 00       	call   3a80 <printf>
    exit();
     80d:	e8 01 31 00 00       	call   3913 <exit>
    printf(stdout, "unlink big failed\n");
     812:	52                   	push   %edx
     813:	52                   	push   %edx
     814:	68 8b 40 00 00       	push   $0x408b
     819:	50                   	push   %eax
     81a:	e8 61 32 00 00       	call   3a80 <printf>
    exit();
     81f:	e8 ef 30 00 00       	call   3913 <exit>
     824:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     82b:	00 
     82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <createtest>:
{
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
  name[2] = '\0';
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     839:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     83c:	68 9c 4e 00 00       	push   $0x4e9c
     841:	ff 35 d8 5e 00 00    	push   0x5ed8
     847:	e8 34 32 00 00       	call   3a80 <printf>
  name[0] = 'a';
     84c:	c6 05 10 86 00 00 61 	movb   $0x61,0x8610
  name[2] = '\0';
     853:	83 c4 10             	add    $0x10,%esp
     856:	c6 05 12 86 00 00 00 	movb   $0x0,0x8612
  for(i = 0; i < 52; i++){
     85d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     860:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     863:	88 1d 11 86 00 00    	mov    %bl,0x8611
  for(i = 0; i < 52; i++){
     869:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     86c:	68 02 02 00 00       	push   $0x202
     871:	68 10 86 00 00       	push   $0x8610
     876:	e8 d8 30 00 00       	call   3953 <open>
    close(fd);
     87b:	89 04 24             	mov    %eax,(%esp)
     87e:	e8 b8 30 00 00       	call   393b <close>
  for(i = 0; i < 52; i++){
     883:	83 c4 10             	add    $0x10,%esp
     886:	80 fb 64             	cmp    $0x64,%bl
     889:	75 d5                	jne    860 <createtest+0x30>
  name[0] = 'a';
     88b:	c6 05 10 86 00 00 61 	movb   $0x61,0x8610
  name[2] = '\0';
     892:	bb 30 00 00 00       	mov    $0x30,%ebx
     897:	c6 05 12 86 00 00 00 	movb   $0x0,0x8612
  for(i = 0; i < 52; i++){
     89e:	66 90                	xchg   %ax,%ax
    unlink(name);
     8a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8a3:	88 1d 11 86 00 00    	mov    %bl,0x8611
  for(i = 0; i < 52; i++){
     8a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8ac:	68 10 86 00 00       	push   $0x8610
     8b1:	e8 ad 30 00 00       	call   3963 <unlink>
  for(i = 0; i < 52; i++){
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	80 fb 64             	cmp    $0x64,%bl
     8bc:	75 e2                	jne    8a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8be:	83 ec 08             	sub    $0x8,%esp
     8c1:	68 c8 4e 00 00       	push   $0x4ec8
     8c6:	ff 35 d8 5e 00 00    	push   0x5ed8
     8cc:	e8 af 31 00 00       	call   3a80 <printf>
}
     8d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8d4:	83 c4 10             	add    $0x10,%esp
     8d7:	c9                   	leave
     8d8:	c3                   	ret
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008e0 <dirtest>:
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8e6:	68 ac 40 00 00       	push   $0x40ac
     8eb:	ff 35 d8 5e 00 00    	push   0x5ed8
     8f1:	e8 8a 31 00 00       	call   3a80 <printf>
  if(mkdir("dir0") < 0){
     8f6:	c7 04 24 b8 40 00 00 	movl   $0x40b8,(%esp)
     8fd:	e8 79 30 00 00       	call   397b <mkdir>
     902:	83 c4 10             	add    $0x10,%esp
     905:	85 c0                	test   %eax,%eax
     907:	78 5a                	js     963 <dirtest+0x83>
  if(chdir("dir0") < 0){
     909:	83 ec 0c             	sub    $0xc,%esp
     90c:	68 b8 40 00 00       	push   $0x40b8
     911:	e8 6d 30 00 00       	call   3983 <chdir>
     916:	83 c4 10             	add    $0x10,%esp
     919:	85 c0                	test   %eax,%eax
     91b:	0f 88 82 00 00 00    	js     9a3 <dirtest+0xc3>
  if(chdir("..") < 0){
     921:	83 ec 0c             	sub    $0xc,%esp
     924:	68 5d 46 00 00       	push   $0x465d
     929:	e8 55 30 00 00       	call   3983 <chdir>
     92e:	83 c4 10             	add    $0x10,%esp
     931:	85 c0                	test   %eax,%eax
     933:	78 57                	js     98c <dirtest+0xac>
  if(unlink("dir0") < 0){
     935:	83 ec 0c             	sub    $0xc,%esp
     938:	68 b8 40 00 00       	push   $0x40b8
     93d:	e8 21 30 00 00       	call   3963 <unlink>
     942:	83 c4 10             	add    $0x10,%esp
     945:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink dir0 failed\n");
     947:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(unlink("dir0") < 0){
     94c:	85 d2                	test   %edx,%edx
     94e:	78 2a                	js     97a <dirtest+0x9a>
  printf(stdout, "mkdir test ok\n");
     950:	83 ec 08             	sub    $0x8,%esp
     953:	68 f5 40 00 00       	push   $0x40f5
     958:	50                   	push   %eax
     959:	e8 22 31 00 00       	call   3a80 <printf>
}
     95e:	83 c4 10             	add    $0x10,%esp
     961:	c9                   	leave
     962:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     963:	50                   	push   %eax
     964:	50                   	push   %eax
     965:	68 e8 3d 00 00       	push   $0x3de8
     96a:	ff 35 d8 5e 00 00    	push   0x5ed8
     970:	e8 0b 31 00 00       	call   3a80 <printf>
    exit();
     975:	e8 99 2f 00 00       	call   3913 <exit>
    printf(stdout, "unlink dir0 failed\n");
     97a:	52                   	push   %edx
     97b:	52                   	push   %edx
     97c:	68 e1 40 00 00       	push   $0x40e1
     981:	50                   	push   %eax
     982:	e8 f9 30 00 00       	call   3a80 <printf>
    exit();
     987:	e8 87 2f 00 00       	call   3913 <exit>
    printf(stdout, "chdir .. failed\n");
     98c:	51                   	push   %ecx
     98d:	51                   	push   %ecx
     98e:	68 d0 40 00 00       	push   $0x40d0
     993:	ff 35 d8 5e 00 00    	push   0x5ed8
     999:	e8 e2 30 00 00       	call   3a80 <printf>
    exit();
     99e:	e8 70 2f 00 00       	call   3913 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9a3:	50                   	push   %eax
     9a4:	50                   	push   %eax
     9a5:	68 bd 40 00 00       	push   $0x40bd
     9aa:	ff 35 d8 5e 00 00    	push   0x5ed8
     9b0:	e8 cb 30 00 00       	call   3a80 <printf>
    exit();
     9b5:	e8 59 2f 00 00       	call   3913 <exit>
     9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9c6:	68 04 41 00 00       	push   $0x4104
     9cb:	ff 35 d8 5e 00 00    	push   0x5ed8
     9d1:	e8 aa 30 00 00       	call   3a80 <printf>
  if(exec("echo", echoargv) < 0){
     9d6:	5a                   	pop    %edx
     9d7:	59                   	pop    %ecx
     9d8:	68 dc 5e 00 00       	push   $0x5edc
     9dd:	68 cd 3e 00 00       	push   $0x3ecd
     9e2:	e8 64 2f 00 00       	call   394b <exec>
     9e7:	83 c4 10             	add    $0x10,%esp
     9ea:	85 c0                	test   %eax,%eax
     9ec:	78 02                	js     9f0 <exectest+0x30>
}
     9ee:	c9                   	leave
     9ef:	c3                   	ret
    printf(stdout, "exec echo failed\n");
     9f0:	50                   	push   %eax
     9f1:	50                   	push   %eax
     9f2:	68 0f 41 00 00       	push   $0x410f
     9f7:	ff 35 d8 5e 00 00    	push   0x5ed8
     9fd:	e8 7e 30 00 00       	call   3a80 <printf>
    exit();
     a02:	e8 0c 2f 00 00       	call   3913 <exit>
     a07:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     a0e:	00 
     a0f:	90                   	nop

00000a10 <pipe1>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
  if(pipe(fds) != 0){
     a15:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a18:	53                   	push   %ebx
     a19:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     a1c:	50                   	push   %eax
     a1d:	e8 01 2f 00 00       	call   3923 <pipe>
     a22:	83 c4 10             	add    $0x10,%esp
     a25:	85 c0                	test   %eax,%eax
     a27:	0f 85 3c 01 00 00    	jne    b69 <pipe1+0x159>
  pid = fork();
     a2d:	e8 d9 2e 00 00       	call   390b <fork>
  if(pid == 0){
     a32:	85 c0                	test   %eax,%eax
     a34:	0f 84 85 00 00 00    	je     abf <pipe1+0xaf>
  } else if(pid > 0){
     a3a:	0f 8e 3c 01 00 00    	jle    b7c <pipe1+0x16c>
    close(fds[1]);
     a40:	83 ec 0c             	sub    $0xc,%esp
     a43:	ff 75 e4             	push   -0x1c(%ebp)
  seq = 0;
     a46:	31 db                	xor    %ebx,%ebx
    cc = 1;
     a48:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
     a4d:	e8 e9 2e 00 00       	call   393b <close>
    while((n = read(fds[0], buf, cc)) > 0){
     a52:	83 c4 10             	add    $0x10,%esp
    total = 0;
     a55:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a5c:	83 ec 04             	sub    $0x4,%esp
     a5f:	56                   	push   %esi
     a60:	68 20 86 00 00       	push   $0x8620
     a65:	ff 75 e0             	push   -0x20(%ebp)
     a68:	e8 be 2e 00 00       	call   392b <read>
     a6d:	83 c4 10             	add    $0x10,%esp
     a70:	89 c7                	mov    %eax,%edi
     a72:	85 c0                	test   %eax,%eax
     a74:	0f 8e ab 00 00 00    	jle    b25 <pipe1+0x115>
     a7a:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
      for(i = 0; i < n; i++){
     a7d:	31 c0                	xor    %eax,%eax
     a7f:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a80:	89 da                	mov    %ebx,%edx
     a82:	83 c3 01             	add    $0x1,%ebx
     a85:	38 90 20 86 00 00    	cmp    %dl,0x8620(%eax)
     a8b:	75 18                	jne    aa5 <pipe1+0x95>
      for(i = 0; i < n; i++){
     a8d:	83 c0 01             	add    $0x1,%eax
     a90:	39 cb                	cmp    %ecx,%ebx
     a92:	75 ec                	jne    a80 <pipe1+0x70>
      cc = cc * 2;
     a94:	01 f6                	add    %esi,%esi
      if(cc > sizeof(buf))
     a96:	b8 00 20 00 00       	mov    $0x2000,%eax
      total += n;
     a9b:	01 7d d4             	add    %edi,-0x2c(%ebp)
      if(cc > sizeof(buf))
     a9e:	39 c6                	cmp    %eax,%esi
     aa0:	0f 4f f0             	cmovg  %eax,%esi
     aa3:	eb b7                	jmp    a5c <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
     aa5:	83 ec 08             	sub    $0x8,%esp
     aa8:	68 3e 41 00 00       	push   $0x413e
     aad:	6a 01                	push   $0x1
     aaf:	e8 cc 2f 00 00       	call   3a80 <printf>
     ab4:	83 c4 10             	add    $0x10,%esp
}
     ab7:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aba:	5b                   	pop    %ebx
     abb:	5e                   	pop    %esi
     abc:	5f                   	pop    %edi
     abd:	5d                   	pop    %ebp
     abe:	c3                   	ret
    close(fds[0]);
     abf:	83 ec 0c             	sub    $0xc,%esp
     ac2:	ff 75 e0             	push   -0x20(%ebp)
  seq = 0;
     ac5:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     ac7:	e8 6f 2e 00 00       	call   393b <close>
     acc:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     acf:	31 c0                	xor    %eax,%eax
     ad1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ad8:	00 
     ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        buf[i] = seq++;
     ae0:	8d 14 03             	lea    (%ebx,%eax,1),%edx
      for(i = 0; i < 1033; i++)
     ae3:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     ae6:	88 90 1f 86 00 00    	mov    %dl,0x861f(%eax)
      for(i = 0; i < 1033; i++)
     aec:	3d 09 04 00 00       	cmp    $0x409,%eax
     af1:	75 ed                	jne    ae0 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     af3:	83 ec 04             	sub    $0x4,%esp
     af6:	81 c3 09 04 00 00    	add    $0x409,%ebx
     afc:	68 09 04 00 00       	push   $0x409
     b01:	68 20 86 00 00       	push   $0x8620
     b06:	ff 75 e4             	push   -0x1c(%ebp)
     b09:	e8 25 2e 00 00       	call   3933 <write>
     b0e:	83 c4 10             	add    $0x10,%esp
     b11:	3d 09 04 00 00       	cmp    $0x409,%eax
     b16:	75 77                	jne    b8f <pipe1+0x17f>
    for(n = 0; n < 5; n++){
     b18:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b1e:	75 af                	jne    acf <pipe1+0xbf>
    exit();
     b20:	e8 ee 2d 00 00       	call   3913 <exit>
    if(total != 5 * 1033){
     b25:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b2c:	75 26                	jne    b54 <pipe1+0x144>
    close(fds[0]);
     b2e:	83 ec 0c             	sub    $0xc,%esp
     b31:	ff 75 e0             	push   -0x20(%ebp)
     b34:	e8 02 2e 00 00       	call   393b <close>
    wait();
     b39:	e8 dd 2d 00 00       	call   391b <wait>
  printf(1, "pipe1 ok\n");
     b3e:	5a                   	pop    %edx
     b3f:	59                   	pop    %ecx
     b40:	68 63 41 00 00       	push   $0x4163
     b45:	6a 01                	push   $0x1
     b47:	e8 34 2f 00 00       	call   3a80 <printf>
     b4c:	83 c4 10             	add    $0x10,%esp
     b4f:	e9 63 ff ff ff       	jmp    ab7 <pipe1+0xa7>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b54:	53                   	push   %ebx
     b55:	ff 75 d4             	push   -0x2c(%ebp)
     b58:	68 4c 41 00 00       	push   $0x414c
     b5d:	6a 01                	push   $0x1
     b5f:	e8 1c 2f 00 00       	call   3a80 <printf>
      exit();
     b64:	e8 aa 2d 00 00       	call   3913 <exit>
    printf(1, "pipe() failed\n");
     b69:	57                   	push   %edi
     b6a:	57                   	push   %edi
     b6b:	68 21 41 00 00       	push   $0x4121
     b70:	6a 01                	push   $0x1
     b72:	e8 09 2f 00 00       	call   3a80 <printf>
    exit();
     b77:	e8 97 2d 00 00       	call   3913 <exit>
    printf(1, "fork() failed\n");
     b7c:	50                   	push   %eax
     b7d:	50                   	push   %eax
     b7e:	68 6d 41 00 00       	push   $0x416d
     b83:	6a 01                	push   $0x1
     b85:	e8 f6 2e 00 00       	call   3a80 <printf>
    exit();
     b8a:	e8 84 2d 00 00       	call   3913 <exit>
        printf(1, "pipe1 oops 1\n");
     b8f:	56                   	push   %esi
     b90:	56                   	push   %esi
     b91:	68 30 41 00 00       	push   $0x4130
     b96:	6a 01                	push   $0x1
     b98:	e8 e3 2e 00 00       	call   3a80 <printf>
        exit();
     b9d:	e8 71 2d 00 00       	call   3913 <exit>
     ba2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ba9:	00 
     baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000bb0 <preempt>:
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
     bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     bb9:	68 7c 41 00 00       	push   $0x417c
     bbe:	6a 01                	push   $0x1
     bc0:	e8 bb 2e 00 00       	call   3a80 <printf>
  pid1 = fork();
     bc5:	e8 41 2d 00 00       	call   390b <fork>
  if(pid1 == 0)
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	85 c0                	test   %eax,%eax
     bcf:	75 07                	jne    bd8 <preempt+0x28>
    for(;;)
     bd1:	eb fe                	jmp    bd1 <preempt+0x21>
     bd3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     bd8:	89 c3                	mov    %eax,%ebx
  pid2 = fork();
     bda:	e8 2c 2d 00 00       	call   390b <fork>
     bdf:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     be1:	85 c0                	test   %eax,%eax
     be3:	75 0b                	jne    bf0 <preempt+0x40>
    for(;;)
     be5:	eb fe                	jmp    be5 <preempt+0x35>
     be7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     bee:	00 
     bef:	90                   	nop
  pipe(pfds);
     bf0:	83 ec 0c             	sub    $0xc,%esp
     bf3:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bf6:	50                   	push   %eax
     bf7:	e8 27 2d 00 00       	call   3923 <pipe>
  pid3 = fork();
     bfc:	e8 0a 2d 00 00       	call   390b <fork>
  if(pid3 == 0){
     c01:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     c04:	89 c7                	mov    %eax,%edi
  if(pid3 == 0){
     c06:	85 c0                	test   %eax,%eax
     c08:	75 3e                	jne    c48 <preempt+0x98>
    close(pfds[0]);
     c0a:	83 ec 0c             	sub    $0xc,%esp
     c0d:	ff 75 e0             	push   -0x20(%ebp)
     c10:	e8 26 2d 00 00       	call   393b <close>
    if(write(pfds[1], "x", 1) != 1)
     c15:	83 c4 0c             	add    $0xc,%esp
     c18:	6a 01                	push   $0x1
     c1a:	68 41 47 00 00       	push   $0x4741
     c1f:	ff 75 e4             	push   -0x1c(%ebp)
     c22:	e8 0c 2d 00 00       	call   3933 <write>
     c27:	83 c4 10             	add    $0x10,%esp
     c2a:	83 f8 01             	cmp    $0x1,%eax
     c2d:	0f 85 b8 00 00 00    	jne    ceb <preempt+0x13b>
    close(pfds[1]);
     c33:	83 ec 0c             	sub    $0xc,%esp
     c36:	ff 75 e4             	push   -0x1c(%ebp)
     c39:	e8 fd 2c 00 00       	call   393b <close>
     c3e:	83 c4 10             	add    $0x10,%esp
    for(;;)
     c41:	eb fe                	jmp    c41 <preempt+0x91>
     c43:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  close(pfds[1]);
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 75 e4             	push   -0x1c(%ebp)
     c4e:	e8 e8 2c 00 00       	call   393b <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c53:	83 c4 0c             	add    $0xc,%esp
     c56:	68 00 20 00 00       	push   $0x2000
     c5b:	68 20 86 00 00       	push   $0x8620
     c60:	ff 75 e0             	push   -0x20(%ebp)
     c63:	e8 c3 2c 00 00       	call   392b <read>
     c68:	83 c4 10             	add    $0x10,%esp
     c6b:	83 f8 01             	cmp    $0x1,%eax
     c6e:	75 67                	jne    cd7 <preempt+0x127>
  close(pfds[0]);
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	ff 75 e0             	push   -0x20(%ebp)
     c76:	e8 c0 2c 00 00       	call   393b <close>
  printf(1, "kill... ");
     c7b:	58                   	pop    %eax
     c7c:	5a                   	pop    %edx
     c7d:	68 ad 41 00 00       	push   $0x41ad
     c82:	6a 01                	push   $0x1
     c84:	e8 f7 2d 00 00       	call   3a80 <printf>
  kill(pid1);
     c89:	89 1c 24             	mov    %ebx,(%esp)
     c8c:	e8 b2 2c 00 00       	call   3943 <kill>
  kill(pid2);
     c91:	89 34 24             	mov    %esi,(%esp)
     c94:	e8 aa 2c 00 00       	call   3943 <kill>
  kill(pid3);
     c99:	89 3c 24             	mov    %edi,(%esp)
     c9c:	e8 a2 2c 00 00       	call   3943 <kill>
  printf(1, "wait... ");
     ca1:	59                   	pop    %ecx
     ca2:	5b                   	pop    %ebx
     ca3:	68 b6 41 00 00       	push   $0x41b6
     ca8:	6a 01                	push   $0x1
     caa:	e8 d1 2d 00 00       	call   3a80 <printf>
  wait();
     caf:	e8 67 2c 00 00       	call   391b <wait>
  wait();
     cb4:	e8 62 2c 00 00       	call   391b <wait>
  wait();
     cb9:	e8 5d 2c 00 00       	call   391b <wait>
  printf(1, "preempt ok\n");
     cbe:	5e                   	pop    %esi
     cbf:	5f                   	pop    %edi
     cc0:	68 bf 41 00 00       	push   $0x41bf
     cc5:	6a 01                	push   $0x1
     cc7:	e8 b4 2d 00 00       	call   3a80 <printf>
     ccc:	83 c4 10             	add    $0x10,%esp
}
     ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cd2:	5b                   	pop    %ebx
     cd3:	5e                   	pop    %esi
     cd4:	5f                   	pop    %edi
     cd5:	5d                   	pop    %ebp
     cd6:	c3                   	ret
    printf(1, "preempt read error");
     cd7:	83 ec 08             	sub    $0x8,%esp
     cda:	68 9a 41 00 00       	push   $0x419a
     cdf:	6a 01                	push   $0x1
     ce1:	e8 9a 2d 00 00       	call   3a80 <printf>
     ce6:	83 c4 10             	add    $0x10,%esp
     ce9:	eb e4                	jmp    ccf <preempt+0x11f>
      printf(1, "preempt write error");
     ceb:	83 ec 08             	sub    $0x8,%esp
     cee:	68 86 41 00 00       	push   $0x4186
     cf3:	6a 01                	push   $0x1
     cf5:	e8 86 2d 00 00       	call   3a80 <printf>
     cfa:	83 c4 10             	add    $0x10,%esp
     cfd:	e9 31 ff ff ff       	jmp    c33 <preempt+0x83>
     d02:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d09:	00 
     d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d10 <exitwait>:
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	be 64 00 00 00       	mov    $0x64,%esi
     d19:	53                   	push   %ebx
     d1a:	eb 14                	jmp    d30 <exitwait+0x20>
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d20:	74 68                	je     d8a <exitwait+0x7a>
      if(wait() != pid){
     d22:	e8 f4 2b 00 00       	call   391b <wait>
     d27:	39 d8                	cmp    %ebx,%eax
     d29:	75 2d                	jne    d58 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d2b:	83 ee 01             	sub    $0x1,%esi
     d2e:	74 41                	je     d71 <exitwait+0x61>
    pid = fork();
     d30:	e8 d6 2b 00 00       	call   390b <fork>
     d35:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d37:	85 c0                	test   %eax,%eax
     d39:	79 e5                	jns    d20 <exitwait+0x10>
      printf(1, "fork failed\n");
     d3b:	83 ec 08             	sub    $0x8,%esp
     d3e:	68 29 4d 00 00       	push   $0x4d29
     d43:	6a 01                	push   $0x1
     d45:	e8 36 2d 00 00       	call   3a80 <printf>
      return;
     d4a:	83 c4 10             	add    $0x10,%esp
}
     d4d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d50:	5b                   	pop    %ebx
     d51:	5e                   	pop    %esi
     d52:	5d                   	pop    %ebp
     d53:	c3                   	ret
     d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d58:	83 ec 08             	sub    $0x8,%esp
     d5b:	68 cb 41 00 00       	push   $0x41cb
     d60:	6a 01                	push   $0x1
     d62:	e8 19 2d 00 00       	call   3a80 <printf>
        return;
     d67:	83 c4 10             	add    $0x10,%esp
}
     d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d6d:	5b                   	pop    %ebx
     d6e:	5e                   	pop    %esi
     d6f:	5d                   	pop    %ebp
     d70:	c3                   	ret
  printf(1, "exitwait ok\n");
     d71:	83 ec 08             	sub    $0x8,%esp
     d74:	68 db 41 00 00       	push   $0x41db
     d79:	6a 01                	push   $0x1
     d7b:	e8 00 2d 00 00       	call   3a80 <printf>
     d80:	83 c4 10             	add    $0x10,%esp
}
     d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d86:	5b                   	pop    %ebx
     d87:	5e                   	pop    %esi
     d88:	5d                   	pop    %ebp
     d89:	c3                   	ret
      exit();
     d8a:	e8 84 2b 00 00       	call   3913 <exit>
     d8f:	90                   	nop

00000d90 <mem>:
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	31 f6                	xor    %esi,%esi
     d96:	53                   	push   %ebx
  printf(1, "mem test\n");
     d97:	83 ec 08             	sub    $0x8,%esp
     d9a:	68 e8 41 00 00       	push   $0x41e8
     d9f:	6a 01                	push   $0x1
     da1:	e8 da 2c 00 00       	call   3a80 <printf>
  ppid = getpid();
     da6:	e8 e8 2b 00 00       	call   3993 <getpid>
     dab:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
     dad:	e8 59 2b 00 00       	call   390b <fork>
     db2:	83 c4 10             	add    $0x10,%esp
     db5:	85 c0                	test   %eax,%eax
     db7:	74 0b                	je     dc4 <mem+0x34>
     db9:	e9 8a 00 00 00       	jmp    e48 <mem+0xb8>
     dbe:	66 90                	xchg   %ax,%ax
      *(char**)m2 = m1;
     dc0:	89 30                	mov    %esi,(%eax)
      m1 = m2;
     dc2:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
     dc4:	83 ec 0c             	sub    $0xc,%esp
     dc7:	68 11 27 00 00       	push   $0x2711
     dcc:	e8 2f 2f 00 00       	call   3d00 <malloc>
     dd1:	83 c4 10             	add    $0x10,%esp
     dd4:	85 c0                	test   %eax,%eax
     dd6:	75 e8                	jne    dc0 <mem+0x30>
    while(m1){
     dd8:	85 f6                	test   %esi,%esi
     dda:	74 18                	je     df4 <mem+0x64>
     ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     de0:	89 f0                	mov    %esi,%eax
      free(m1);
     de2:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     de5:	8b 36                	mov    (%esi),%esi
      free(m1);
     de7:	50                   	push   %eax
     de8:	e8 73 2e 00 00       	call   3c60 <free>
    while(m1){
     ded:	83 c4 10             	add    $0x10,%esp
     df0:	85 f6                	test   %esi,%esi
     df2:	75 ec                	jne    de0 <mem+0x50>
    m1 = malloc(1024*20);
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	68 00 50 00 00       	push   $0x5000
     dfc:	e8 ff 2e 00 00       	call   3d00 <malloc>
    if(m1 == 0){
     e01:	83 c4 10             	add    $0x10,%esp
     e04:	85 c0                	test   %eax,%eax
     e06:	74 20                	je     e28 <mem+0x98>
    free(m1);
     e08:	83 ec 0c             	sub    $0xc,%esp
     e0b:	50                   	push   %eax
     e0c:	e8 4f 2e 00 00       	call   3c60 <free>
    printf(1, "mem ok\n");
     e11:	58                   	pop    %eax
     e12:	5a                   	pop    %edx
     e13:	68 0c 42 00 00       	push   $0x420c
     e18:	6a 01                	push   $0x1
     e1a:	e8 61 2c 00 00       	call   3a80 <printf>
    exit();
     e1f:	e8 ef 2a 00 00       	call   3913 <exit>
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e28:	83 ec 08             	sub    $0x8,%esp
     e2b:	68 f2 41 00 00       	push   $0x41f2
     e30:	6a 01                	push   $0x1
     e32:	e8 49 2c 00 00       	call   3a80 <printf>
      kill(ppid);
     e37:	89 1c 24             	mov    %ebx,(%esp)
     e3a:	e8 04 2b 00 00       	call   3943 <kill>
      exit();
     e3f:	e8 cf 2a 00 00       	call   3913 <exit>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e48:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e4b:	5b                   	pop    %ebx
     e4c:	5e                   	pop    %esi
     e4d:	5d                   	pop    %ebp
    wait();
     e4e:	e9 c8 2a 00 00       	jmp    391b <wait>
     e53:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e5a:	00 
     e5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000e60 <sharedfd>:
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	56                   	push   %esi
     e65:	53                   	push   %ebx
     e66:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e69:	68 14 42 00 00       	push   $0x4214
     e6e:	6a 01                	push   $0x1
     e70:	e8 0b 2c 00 00       	call   3a80 <printf>
  unlink("sharedfd");
     e75:	c7 04 24 23 42 00 00 	movl   $0x4223,(%esp)
     e7c:	e8 e2 2a 00 00       	call   3963 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e81:	5b                   	pop    %ebx
     e82:	5e                   	pop    %esi
     e83:	68 02 02 00 00       	push   $0x202
     e88:	68 23 42 00 00       	push   $0x4223
     e8d:	e8 c1 2a 00 00       	call   3953 <open>
  if(fd < 0){
     e92:	83 c4 10             	add    $0x10,%esp
     e95:	85 c0                	test   %eax,%eax
     e97:	0f 88 2a 01 00 00    	js     fc7 <sharedfd+0x167>
     e9d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e9f:	8d 75 d8             	lea    -0x28(%ebp),%esi
     ea2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
     ea7:	e8 5f 2a 00 00       	call   390b <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eac:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     eaf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eb2:	19 c0                	sbb    %eax,%eax
     eb4:	83 ec 04             	sub    $0x4,%esp
     eb7:	83 e0 f3             	and    $0xfffffff3,%eax
     eba:	6a 0a                	push   $0xa
     ebc:	83 c0 70             	add    $0x70,%eax
     ebf:	50                   	push   %eax
     ec0:	56                   	push   %esi
     ec1:	e8 ca 28 00 00       	call   3790 <memset>
     ec6:	83 c4 10             	add    $0x10,%esp
     ec9:	eb 0a                	jmp    ed5 <sharedfd+0x75>
     ecb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
     ed0:	83 eb 01             	sub    $0x1,%ebx
     ed3:	74 26                	je     efb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     ed5:	83 ec 04             	sub    $0x4,%esp
     ed8:	6a 0a                	push   $0xa
     eda:	56                   	push   %esi
     edb:	57                   	push   %edi
     edc:	e8 52 2a 00 00       	call   3933 <write>
     ee1:	83 c4 10             	add    $0x10,%esp
     ee4:	83 f8 0a             	cmp    $0xa,%eax
     ee7:	74 e7                	je     ed0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     ee9:	83 ec 08             	sub    $0x8,%esp
     eec:	68 1c 4f 00 00       	push   $0x4f1c
     ef1:	6a 01                	push   $0x1
     ef3:	e8 88 2b 00 00       	call   3a80 <printf>
      break;
     ef8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     efb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     efe:	85 c9                	test   %ecx,%ecx
     f00:	0f 84 f5 00 00 00    	je     ffb <sharedfd+0x19b>
    wait();
     f06:	e8 10 2a 00 00       	call   391b <wait>
  close(fd);
     f0b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     f0e:	31 db                	xor    %ebx,%ebx
  close(fd);
     f10:	57                   	push   %edi
     f11:	8d 7d e2             	lea    -0x1e(%ebp),%edi
     f14:	e8 22 2a 00 00       	call   393b <close>
  fd = open("sharedfd", 0);
     f19:	58                   	pop    %eax
     f1a:	5a                   	pop    %edx
     f1b:	6a 00                	push   $0x0
     f1d:	68 23 42 00 00       	push   $0x4223
     f22:	e8 2c 2a 00 00       	call   3953 <open>
  if(fd < 0){
     f27:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
     f2a:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
     f2c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f2f:	85 c0                	test   %eax,%eax
     f31:	0f 88 aa 00 00 00    	js     fe1 <sharedfd+0x181>
     f37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f3e:	00 
     f3f:	90                   	nop
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f40:	83 ec 04             	sub    $0x4,%esp
     f43:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f46:	6a 0a                	push   $0xa
     f48:	56                   	push   %esi
     f49:	ff 75 d0             	push   -0x30(%ebp)
     f4c:	e8 da 29 00 00       	call   392b <read>
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	7e 28                	jle    f80 <sharedfd+0x120>
     f58:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f5b:	89 f0                	mov    %esi,%eax
     f5d:	eb 13                	jmp    f72 <sharedfd+0x112>
     f5f:	90                   	nop
        np++;
     f60:	80 f9 70             	cmp    $0x70,%cl
     f63:	0f 94 c1             	sete   %cl
     f66:	0f b6 c9             	movzbl %cl,%ecx
     f69:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
     f6b:	83 c0 01             	add    $0x1,%eax
     f6e:	39 f8                	cmp    %edi,%eax
     f70:	74 ce                	je     f40 <sharedfd+0xe0>
      if(buf[i] == 'c')
     f72:	0f b6 08             	movzbl (%eax),%ecx
     f75:	80 f9 63             	cmp    $0x63,%cl
     f78:	75 e6                	jne    f60 <sharedfd+0x100>
        nc++;
     f7a:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
     f7d:	eb ec                	jmp    f6b <sharedfd+0x10b>
     f7f:	90                   	nop
  close(fd);
     f80:	83 ec 0c             	sub    $0xc,%esp
     f83:	ff 75 d0             	push   -0x30(%ebp)
     f86:	e8 b0 29 00 00       	call   393b <close>
  unlink("sharedfd");
     f8b:	c7 04 24 23 42 00 00 	movl   $0x4223,(%esp)
     f92:	e8 cc 29 00 00       	call   3963 <unlink>
  if(nc == 10000 && np == 10000){
     f97:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f9a:	83 c4 10             	add    $0x10,%esp
     f9d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     fa3:	75 5b                	jne    1000 <sharedfd+0x1a0>
     fa5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fab:	75 53                	jne    1000 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
     fad:	83 ec 08             	sub    $0x8,%esp
     fb0:	68 2c 42 00 00       	push   $0x422c
     fb5:	6a 01                	push   $0x1
     fb7:	e8 c4 2a 00 00       	call   3a80 <printf>
     fbc:	83 c4 10             	add    $0x10,%esp
}
     fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fc2:	5b                   	pop    %ebx
     fc3:	5e                   	pop    %esi
     fc4:	5f                   	pop    %edi
     fc5:	5d                   	pop    %ebp
     fc6:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for writing");
     fc7:	83 ec 08             	sub    $0x8,%esp
     fca:	68 f0 4e 00 00       	push   $0x4ef0
     fcf:	6a 01                	push   $0x1
     fd1:	e8 aa 2a 00 00       	call   3a80 <printf>
    return;
     fd6:	83 c4 10             	add    $0x10,%esp
}
     fd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fdc:	5b                   	pop    %ebx
     fdd:	5e                   	pop    %esi
     fde:	5f                   	pop    %edi
     fdf:	5d                   	pop    %ebp
     fe0:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for reading\n");
     fe1:	83 ec 08             	sub    $0x8,%esp
     fe4:	68 3c 4f 00 00       	push   $0x4f3c
     fe9:	6a 01                	push   $0x1
     feb:	e8 90 2a 00 00       	call   3a80 <printf>
    return;
     ff0:	83 c4 10             	add    $0x10,%esp
}
     ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff6:	5b                   	pop    %ebx
     ff7:	5e                   	pop    %esi
     ff8:	5f                   	pop    %edi
     ff9:	5d                   	pop    %ebp
     ffa:	c3                   	ret
    exit();
     ffb:	e8 13 29 00 00       	call   3913 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1000:	53                   	push   %ebx
    1001:	52                   	push   %edx
    1002:	68 39 42 00 00       	push   $0x4239
    1007:	6a 01                	push   $0x1
    1009:	e8 72 2a 00 00       	call   3a80 <printf>
    exit();
    100e:	e8 00 29 00 00       	call   3913 <exit>
    1013:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    101a:	00 
    101b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00001020 <fourfiles>:
{
    1020:	55                   	push   %ebp
  char *names[] = { "f0", "f1", "f2", "f3" };
    1021:	b8 51 42 00 00       	mov    $0x4251,%eax
    1026:	66 0f 6e d0          	movd   %eax,%xmm2
    102a:	b8 97 43 00 00       	mov    $0x4397,%eax
    102f:	66 0f 6e d8          	movd   %eax,%xmm3
{
    1033:	89 e5                	mov    %esp,%ebp
    1035:	57                   	push   %edi
    1036:	56                   	push   %esi
    1037:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1038:	31 db                	xor    %ebx,%ebx
{
    103a:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    103d:	66 0f 6e 0d 88 55 00 	movd   0x5588,%xmm1
    1044:	00 
    1045:	66 0f 6e 05 8c 55 00 	movd   0x558c,%xmm0
    104c:	00 
    104d:	66 0f 62 ca          	punpckldq %xmm2,%xmm1
    1051:	66 0f 62 c3          	punpckldq %xmm3,%xmm0
    1055:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    1059:	0f 29 45 d8          	movaps %xmm0,-0x28(%ebp)
  printf(1, "fourfiles test\n");
    105d:	68 54 42 00 00       	push   $0x4254
    1062:	6a 01                	push   $0x1
    1064:	e8 17 2a 00 00       	call   3a80 <printf>
    1069:	83 c4 10             	add    $0x10,%esp
    fname = names[pi];
    106c:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    unlink(fname);
    1070:	83 ec 0c             	sub    $0xc,%esp
    1073:	56                   	push   %esi
    1074:	e8 ea 28 00 00       	call   3963 <unlink>
    pid = fork();
    1079:	e8 8d 28 00 00       	call   390b <fork>
    if(pid < 0){
    107e:	83 c4 10             	add    $0x10,%esp
    1081:	85 c0                	test   %eax,%eax
    1083:	0f 88 67 01 00 00    	js     11f0 <fourfiles+0x1d0>
    if(pid == 0){
    1089:	0f 84 f1 00 00 00    	je     1180 <fourfiles+0x160>
  for(pi = 0; pi < 4; pi++){
    108f:	83 c3 01             	add    $0x1,%ebx
    1092:	83 fb 04             	cmp    $0x4,%ebx
    1095:	75 d5                	jne    106c <fourfiles+0x4c>
    wait();
    1097:	e8 7f 28 00 00       	call   391b <wait>
    109c:	e8 7a 28 00 00       	call   391b <wait>
    10a1:	e8 75 28 00 00       	call   391b <wait>
    10a6:	e8 70 28 00 00       	call   391b <wait>
  for(i = 0; i < 2; i++){
    10ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    fname = names[i];
    10b2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    fd = open(fname, 0);
    10b5:	83 ec 08             	sub    $0x8,%esp
    fname = names[i];
    10b8:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
        if(buf[j] != '0'+i){
    10bc:	8d 73 30             	lea    0x30(%ebx),%esi
    total = 0;
    10bf:	31 db                	xor    %ebx,%ebx
    fname = names[i];
    10c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    10c4:	6a 00                	push   $0x0
    10c6:	50                   	push   %eax
    10c7:	e8 87 28 00 00       	call   3953 <open>
        if(buf[j] != '0'+i){
    10cc:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10cf:	89 c7                	mov    %eax,%edi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10d1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    10d8:	00 
    10d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10e0:	83 ec 04             	sub    $0x4,%esp
    10e3:	68 00 20 00 00       	push   $0x2000
    10e8:	68 20 86 00 00       	push   $0x8620
    10ed:	57                   	push   %edi
    10ee:	e8 38 28 00 00       	call   392b <read>
    10f3:	83 c4 10             	add    $0x10,%esp
    10f6:	85 c0                	test   %eax,%eax
    10f8:	7e 1c                	jle    1116 <fourfiles+0xf6>
      for(j = 0; j < n; j++){
    10fa:	31 d2                	xor    %edx,%edx
    10fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if(buf[j] != '0'+i){
    1100:	0f be 8a 20 86 00 00 	movsbl 0x8620(%edx),%ecx
    1107:	39 f1                	cmp    %esi,%ecx
    1109:	75 61                	jne    116c <fourfiles+0x14c>
      for(j = 0; j < n; j++){
    110b:	83 c2 01             	add    $0x1,%edx
    110e:	39 d0                	cmp    %edx,%eax
    1110:	75 ee                	jne    1100 <fourfiles+0xe0>
      total += n;
    1112:	01 c3                	add    %eax,%ebx
    1114:	eb ca                	jmp    10e0 <fourfiles+0xc0>
    close(fd);
    1116:	83 ec 0c             	sub    $0xc,%esp
    1119:	57                   	push   %edi
    111a:	e8 1c 28 00 00       	call   393b <close>
    if(total != 12*500){
    111f:	83 c4 10             	add    $0x10,%esp
    1122:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1128:	0f 85 d6 00 00 00    	jne    1204 <fourfiles+0x1e4>
    unlink(fname);
    112e:	83 ec 0c             	sub    $0xc,%esp
    1131:	ff 75 d0             	push   -0x30(%ebp)
    1134:	e8 2a 28 00 00       	call   3963 <unlink>
  for(i = 0; i < 2; i++){
    1139:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    113c:	83 c4 10             	add    $0x10,%esp
    113f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    1146:	83 c0 01             	add    $0x1,%eax
    1149:	83 f8 02             	cmp    $0x2,%eax
    114c:	0f 85 60 ff ff ff    	jne    10b2 <fourfiles+0x92>
  printf(1, "fourfiles ok\n");
    1152:	83 ec 08             	sub    $0x8,%esp
    1155:	68 92 42 00 00       	push   $0x4292
    115a:	6a 01                	push   $0x1
    115c:	e8 1f 29 00 00       	call   3a80 <printf>
}
    1161:	83 c4 10             	add    $0x10,%esp
    1164:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1167:	5b                   	pop    %ebx
    1168:	5e                   	pop    %esi
    1169:	5f                   	pop    %edi
    116a:	5d                   	pop    %ebp
    116b:	c3                   	ret
          printf(1, "wrong char\n");
    116c:	83 ec 08             	sub    $0x8,%esp
    116f:	68 75 42 00 00       	push   $0x4275
    1174:	6a 01                	push   $0x1
    1176:	e8 05 29 00 00       	call   3a80 <printf>
          exit();
    117b:	e8 93 27 00 00       	call   3913 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1180:	83 ec 08             	sub    $0x8,%esp
    1183:	68 02 02 00 00       	push   $0x202
    1188:	56                   	push   %esi
    1189:	e8 c5 27 00 00       	call   3953 <open>
      if(fd < 0){
    118e:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    1191:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1193:	85 c0                	test   %eax,%eax
    1195:	78 45                	js     11dc <fourfiles+0x1bc>
      memset(buf, '0'+pi, 512);
    1197:	83 ec 04             	sub    $0x4,%esp
    119a:	83 c3 30             	add    $0x30,%ebx
    119d:	68 00 02 00 00       	push   $0x200
    11a2:	53                   	push   %ebx
    11a3:	bb 0c 00 00 00       	mov    $0xc,%ebx
    11a8:	68 20 86 00 00       	push   $0x8620
    11ad:	e8 de 25 00 00       	call   3790 <memset>
    11b2:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    11b5:	83 ec 04             	sub    $0x4,%esp
    11b8:	68 f4 01 00 00       	push   $0x1f4
    11bd:	68 20 86 00 00       	push   $0x8620
    11c2:	56                   	push   %esi
    11c3:	e8 6b 27 00 00       	call   3933 <write>
    11c8:	83 c4 10             	add    $0x10,%esp
    11cb:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11d0:	75 45                	jne    1217 <fourfiles+0x1f7>
      for(i = 0; i < 12; i++){
    11d2:	83 eb 01             	sub    $0x1,%ebx
    11d5:	75 de                	jne    11b5 <fourfiles+0x195>
      exit();
    11d7:	e8 37 27 00 00       	call   3913 <exit>
        printf(1, "create failed\n");
    11dc:	51                   	push   %ecx
    11dd:	51                   	push   %ecx
    11de:	68 ef 44 00 00       	push   $0x44ef
    11e3:	6a 01                	push   $0x1
    11e5:	e8 96 28 00 00       	call   3a80 <printf>
        exit();
    11ea:	e8 24 27 00 00       	call   3913 <exit>
    11ef:	90                   	nop
      printf(1, "fork failed\n");
    11f0:	83 ec 08             	sub    $0x8,%esp
    11f3:	68 29 4d 00 00       	push   $0x4d29
    11f8:	6a 01                	push   $0x1
    11fa:	e8 81 28 00 00       	call   3a80 <printf>
      exit();
    11ff:	e8 0f 27 00 00       	call   3913 <exit>
      printf(1, "wrong length %d\n", total);
    1204:	50                   	push   %eax
    1205:	53                   	push   %ebx
    1206:	68 81 42 00 00       	push   $0x4281
    120b:	6a 01                	push   $0x1
    120d:	e8 6e 28 00 00       	call   3a80 <printf>
      exit();
    1212:	e8 fc 26 00 00       	call   3913 <exit>
          printf(1, "write failed %d\n", n);
    1217:	52                   	push   %edx
    1218:	50                   	push   %eax
    1219:	68 64 42 00 00       	push   $0x4264
    121e:	6a 01                	push   $0x1
    1220:	e8 5b 28 00 00       	call   3a80 <printf>
          exit();
    1225:	e8 e9 26 00 00       	call   3913 <exit>
    122a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001230 <createdelete>:
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	57                   	push   %edi
    1234:	56                   	push   %esi
  for(pi = 0; pi < 4; pi++){
    1235:	31 f6                	xor    %esi,%esi
{
    1237:	53                   	push   %ebx
    1238:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    123b:	68 a0 42 00 00       	push   $0x42a0
    1240:	6a 01                	push   $0x1
    1242:	e8 39 28 00 00       	call   3a80 <printf>
    1247:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    124a:	e8 bc 26 00 00       	call   390b <fork>
    124f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1251:	85 c0                	test   %eax,%eax
    1253:	0f 88 aa 01 00 00    	js     1403 <createdelete+0x1d3>
    if(pid == 0){
    1259:	0f 84 11 01 00 00    	je     1370 <createdelete+0x140>
  for(pi = 0; pi < 4; pi++){
    125f:	83 c6 01             	add    $0x1,%esi
    1262:	83 fe 04             	cmp    $0x4,%esi
    1265:	75 e3                	jne    124a <createdelete+0x1a>
    wait();
    1267:	e8 af 26 00 00       	call   391b <wait>
  for(i = 0; i < N; i++){
    126c:	31 ff                	xor    %edi,%edi
    126e:	8d 75 c8             	lea    -0x38(%ebp),%esi
    wait();
    1271:	e8 a5 26 00 00       	call   391b <wait>
    1276:	e8 a0 26 00 00       	call   391b <wait>
    127b:	e8 9b 26 00 00       	call   391b <wait>
  name[0] = name[1] = name[2] = 0;
    1280:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    1284:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    128b:	00 
    128c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if((i == 0 || i >= N/2) && fd < 0){
    1290:	85 ff                	test   %edi,%edi
      name[1] = '0' + i;
    1292:	bb 70 00 00 00       	mov    $0x70,%ebx
      if((i == 0 || i >= N/2) && fd < 0){
    1297:	0f 94 c2             	sete   %dl
    129a:	83 ff 09             	cmp    $0x9,%edi
    129d:	0f 9f c0             	setg   %al
    12a0:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
    12a2:	8d 47 30             	lea    0x30(%edi),%eax
      if((i == 0 || i >= N/2) && fd < 0){
    12a5:	88 55 c7             	mov    %dl,-0x39(%ebp)
      name[1] = '0' + i;
    12a8:	88 45 c6             	mov    %al,-0x3a(%ebp)
    12ab:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    12af:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    12b2:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    12b5:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    12b8:	6a 00                	push   $0x0
    12ba:	56                   	push   %esi
    12bb:	e8 93 26 00 00       	call   3953 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12c0:	83 c4 10             	add    $0x10,%esp
    12c3:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    12c7:	0f 84 83 00 00 00    	je     1350 <createdelete+0x120>
    12cd:	85 c0                	test   %eax,%eax
    12cf:	0f 88 19 01 00 00    	js     13ee <createdelete+0x1be>
        close(fd);
    12d5:	83 ec 0c             	sub    $0xc,%esp
    12d8:	50                   	push   %eax
    12d9:	e8 5d 26 00 00       	call   393b <close>
    12de:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    12e1:	83 c3 01             	add    $0x1,%ebx
    12e4:	80 fb 74             	cmp    $0x74,%bl
    12e7:	75 c2                	jne    12ab <createdelete+0x7b>
  for(i = 0; i < N; i++){
    12e9:	83 c7 01             	add    $0x1,%edi
    12ec:	83 ff 14             	cmp    $0x14,%edi
    12ef:	75 9f                	jne    1290 <createdelete+0x60>
    12f1:	bf 70 00 00 00       	mov    $0x70,%edi
    12f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    12fd:	00 
    12fe:	66 90                	xchg   %ax,%ax
      name[1] = '0' + i;
    1300:	8d 47 c0             	lea    -0x40(%edi),%eax
    1303:	bb 04 00 00 00       	mov    $0x4,%ebx
    1308:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    130b:	89 f8                	mov    %edi,%eax
      unlink(name);
    130d:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    1310:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1313:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    1317:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    131a:	56                   	push   %esi
    131b:	e8 43 26 00 00       	call   3963 <unlink>
    for(pi = 0; pi < 4; pi++){
    1320:	83 c4 10             	add    $0x10,%esp
    1323:	83 eb 01             	sub    $0x1,%ebx
    1326:	75 e3                	jne    130b <createdelete+0xdb>
  for(i = 0; i < N; i++){
    1328:	83 c7 01             	add    $0x1,%edi
    132b:	89 f8                	mov    %edi,%eax
    132d:	3c 84                	cmp    $0x84,%al
    132f:	75 cf                	jne    1300 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    1331:	83 ec 08             	sub    $0x8,%esp
    1334:	68 b3 42 00 00       	push   $0x42b3
    1339:	6a 01                	push   $0x1
    133b:	e8 40 27 00 00       	call   3a80 <printf>
}
    1340:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1343:	5b                   	pop    %ebx
    1344:	5e                   	pop    %esi
    1345:	5f                   	pop    %edi
    1346:	5d                   	pop    %ebp
    1347:	c3                   	ret
    1348:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    134f:	00 
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1350:	85 c0                	test   %eax,%eax
    1352:	78 8d                	js     12e1 <createdelete+0xb1>
        printf(1, "oops createdelete %s did exist\n", name);
    1354:	50                   	push   %eax
    1355:	56                   	push   %esi
    1356:	68 8c 4f 00 00       	push   $0x4f8c
    135b:	6a 01                	push   $0x1
    135d:	e8 1e 27 00 00       	call   3a80 <printf>
        exit();
    1362:	e8 ac 25 00 00       	call   3913 <exit>
    1367:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    136e:	00 
    136f:	90                   	nop
      name[0] = 'p' + pi;
    1370:	8d 46 70             	lea    0x70(%esi),%eax
      name[2] = '\0';
    1373:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1377:	8d 75 c8             	lea    -0x38(%ebp),%esi
      name[0] = 'p' + pi;
    137a:	88 45 c8             	mov    %al,-0x38(%ebp)
      for(i = 0; i < N; i++){
    137d:	8d 76 00             	lea    0x0(%esi),%esi
        fd = open(name, O_CREATE | O_RDWR);
    1380:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    1383:	8d 43 30             	lea    0x30(%ebx),%eax
    1386:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1389:	68 02 02 00 00       	push   $0x202
    138e:	56                   	push   %esi
    138f:	e8 bf 25 00 00       	call   3953 <open>
        if(fd < 0){
    1394:	83 c4 10             	add    $0x10,%esp
    1397:	85 c0                	test   %eax,%eax
    1399:	0f 88 8b 00 00 00    	js     142a <createdelete+0x1fa>
        close(fd);
    139f:	83 ec 0c             	sub    $0xc,%esp
    13a2:	50                   	push   %eax
    13a3:	e8 93 25 00 00       	call   393b <close>
        if(i > 0 && (i % 2 ) == 0){
    13a8:	83 c4 10             	add    $0x10,%esp
    13ab:	85 db                	test   %ebx,%ebx
    13ad:	74 19                	je     13c8 <createdelete+0x198>
    13af:	f6 c3 01             	test   $0x1,%bl
    13b2:	74 1b                	je     13cf <createdelete+0x19f>
      for(i = 0; i < N; i++){
    13b4:	83 c3 01             	add    $0x1,%ebx
    13b7:	83 fb 14             	cmp    $0x14,%ebx
    13ba:	75 c4                	jne    1380 <createdelete+0x150>
      exit();
    13bc:	e8 52 25 00 00       	call   3913 <exit>
    13c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    13c8:	bb 01 00 00 00       	mov    $0x1,%ebx
    13cd:	eb b1                	jmp    1380 <createdelete+0x150>
          name[1] = '0' + (i / 2);
    13cf:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    13d1:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    13d4:	d1 f8                	sar    $1,%eax
    13d6:	83 c0 30             	add    $0x30,%eax
    13d9:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13dc:	56                   	push   %esi
    13dd:	e8 81 25 00 00       	call   3963 <unlink>
    13e2:	83 c4 10             	add    $0x10,%esp
    13e5:	85 c0                	test   %eax,%eax
    13e7:	78 2e                	js     1417 <createdelete+0x1e7>
      for(i = 0; i < N; i++){
    13e9:	83 c3 01             	add    $0x1,%ebx
    13ec:	eb 92                	jmp    1380 <createdelete+0x150>
        printf(1, "oops createdelete %s didn't exist\n", name);
    13ee:	83 ec 04             	sub    $0x4,%esp
    13f1:	56                   	push   %esi
    13f2:	68 68 4f 00 00       	push   $0x4f68
    13f7:	6a 01                	push   $0x1
    13f9:	e8 82 26 00 00       	call   3a80 <printf>
        exit();
    13fe:	e8 10 25 00 00       	call   3913 <exit>
      printf(1, "fork failed\n");
    1403:	83 ec 08             	sub    $0x8,%esp
    1406:	68 29 4d 00 00       	push   $0x4d29
    140b:	6a 01                	push   $0x1
    140d:	e8 6e 26 00 00       	call   3a80 <printf>
      exit();
    1412:	e8 fc 24 00 00       	call   3913 <exit>
            printf(1, "unlink failed\n");
    1417:	52                   	push   %edx
    1418:	52                   	push   %edx
    1419:	68 a1 3e 00 00       	push   $0x3ea1
    141e:	6a 01                	push   $0x1
    1420:	e8 5b 26 00 00       	call   3a80 <printf>
            exit();
    1425:	e8 e9 24 00 00       	call   3913 <exit>
          printf(1, "create failed\n");
    142a:	83 ec 08             	sub    $0x8,%esp
    142d:	68 ef 44 00 00       	push   $0x44ef
    1432:	6a 01                	push   $0x1
    1434:	e8 47 26 00 00       	call   3a80 <printf>
          exit();
    1439:	e8 d5 24 00 00       	call   3913 <exit>
    143e:	66 90                	xchg   %ax,%ax

00001440 <unlinkread>:
{
    1440:	55                   	push   %ebp
    1441:	89 e5                	mov    %esp,%ebp
    1443:	56                   	push   %esi
    1444:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1445:	83 ec 08             	sub    $0x8,%esp
    1448:	68 c4 42 00 00       	push   $0x42c4
    144d:	6a 01                	push   $0x1
    144f:	e8 2c 26 00 00       	call   3a80 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1454:	5b                   	pop    %ebx
    1455:	5e                   	pop    %esi
    1456:	68 02 02 00 00       	push   $0x202
    145b:	68 d5 42 00 00       	push   $0x42d5
    1460:	e8 ee 24 00 00       	call   3953 <open>
  if(fd < 0){
    1465:	83 c4 10             	add    $0x10,%esp
    1468:	85 c0                	test   %eax,%eax
    146a:	0f 88 e6 00 00 00    	js     1556 <unlinkread+0x116>
  write(fd, "hello", 5);
    1470:	83 ec 04             	sub    $0x4,%esp
    1473:	89 c3                	mov    %eax,%ebx
    1475:	6a 05                	push   $0x5
    1477:	68 fa 42 00 00       	push   $0x42fa
    147c:	50                   	push   %eax
    147d:	e8 b1 24 00 00       	call   3933 <write>
  close(fd);
    1482:	89 1c 24             	mov    %ebx,(%esp)
    1485:	e8 b1 24 00 00       	call   393b <close>
  fd = open("unlinkread", O_RDWR);
    148a:	58                   	pop    %eax
    148b:	5a                   	pop    %edx
    148c:	6a 02                	push   $0x2
    148e:	68 d5 42 00 00       	push   $0x42d5
    1493:	e8 bb 24 00 00       	call   3953 <open>
  if(fd < 0){
    1498:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    149b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    149d:	85 c0                	test   %eax,%eax
    149f:	0f 88 10 01 00 00    	js     15b5 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    14a5:	83 ec 0c             	sub    $0xc,%esp
    14a8:	68 d5 42 00 00       	push   $0x42d5
    14ad:	e8 b1 24 00 00       	call   3963 <unlink>
    14b2:	83 c4 10             	add    $0x10,%esp
    14b5:	85 c0                	test   %eax,%eax
    14b7:	0f 85 e5 00 00 00    	jne    15a2 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14bd:	83 ec 08             	sub    $0x8,%esp
    14c0:	68 02 02 00 00       	push   $0x202
    14c5:	68 d5 42 00 00       	push   $0x42d5
    14ca:	e8 84 24 00 00       	call   3953 <open>
  write(fd1, "yyy", 3);
    14cf:	83 c4 0c             	add    $0xc,%esp
    14d2:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14d4:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    14d6:	68 32 43 00 00       	push   $0x4332
    14db:	50                   	push   %eax
    14dc:	e8 52 24 00 00       	call   3933 <write>
  close(fd1);
    14e1:	89 34 24             	mov    %esi,(%esp)
    14e4:	e8 52 24 00 00       	call   393b <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    14e9:	83 c4 0c             	add    $0xc,%esp
    14ec:	68 00 20 00 00       	push   $0x2000
    14f1:	68 20 86 00 00       	push   $0x8620
    14f6:	53                   	push   %ebx
    14f7:	e8 2f 24 00 00       	call   392b <read>
    14fc:	83 c4 10             	add    $0x10,%esp
    14ff:	83 f8 05             	cmp    $0x5,%eax
    1502:	0f 85 87 00 00 00    	jne    158f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    1508:	80 3d 20 86 00 00 68 	cmpb   $0x68,0x8620
    150f:	75 6b                	jne    157c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    1511:	83 ec 04             	sub    $0x4,%esp
    1514:	6a 0a                	push   $0xa
    1516:	68 20 86 00 00       	push   $0x8620
    151b:	53                   	push   %ebx
    151c:	e8 12 24 00 00       	call   3933 <write>
    1521:	83 c4 10             	add    $0x10,%esp
    1524:	83 f8 0a             	cmp    $0xa,%eax
    1527:	75 40                	jne    1569 <unlinkread+0x129>
  close(fd);
    1529:	83 ec 0c             	sub    $0xc,%esp
    152c:	53                   	push   %ebx
    152d:	e8 09 24 00 00       	call   393b <close>
  unlink("unlinkread");
    1532:	c7 04 24 d5 42 00 00 	movl   $0x42d5,(%esp)
    1539:	e8 25 24 00 00       	call   3963 <unlink>
  printf(1, "unlinkread ok\n");
    153e:	58                   	pop    %eax
    153f:	5a                   	pop    %edx
    1540:	68 7d 43 00 00       	push   $0x437d
    1545:	6a 01                	push   $0x1
    1547:	e8 34 25 00 00       	call   3a80 <printf>
}
    154c:	83 c4 10             	add    $0x10,%esp
    154f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1552:	5b                   	pop    %ebx
    1553:	5e                   	pop    %esi
    1554:	5d                   	pop    %ebp
    1555:	c3                   	ret
    printf(1, "create unlinkread failed\n");
    1556:	51                   	push   %ecx
    1557:	51                   	push   %ecx
    1558:	68 e0 42 00 00       	push   $0x42e0
    155d:	6a 01                	push   $0x1
    155f:	e8 1c 25 00 00       	call   3a80 <printf>
    exit();
    1564:	e8 aa 23 00 00       	call   3913 <exit>
    printf(1, "unlinkread write failed\n");
    1569:	51                   	push   %ecx
    156a:	51                   	push   %ecx
    156b:	68 64 43 00 00       	push   $0x4364
    1570:	6a 01                	push   $0x1
    1572:	e8 09 25 00 00       	call   3a80 <printf>
    exit();
    1577:	e8 97 23 00 00       	call   3913 <exit>
    printf(1, "unlinkread wrong data\n");
    157c:	53                   	push   %ebx
    157d:	53                   	push   %ebx
    157e:	68 4d 43 00 00       	push   $0x434d
    1583:	6a 01                	push   $0x1
    1585:	e8 f6 24 00 00       	call   3a80 <printf>
    exit();
    158a:	e8 84 23 00 00       	call   3913 <exit>
    printf(1, "unlinkread read failed");
    158f:	56                   	push   %esi
    1590:	56                   	push   %esi
    1591:	68 36 43 00 00       	push   $0x4336
    1596:	6a 01                	push   $0x1
    1598:	e8 e3 24 00 00       	call   3a80 <printf>
    exit();
    159d:	e8 71 23 00 00       	call   3913 <exit>
    printf(1, "unlink unlinkread failed\n");
    15a2:	50                   	push   %eax
    15a3:	50                   	push   %eax
    15a4:	68 18 43 00 00       	push   $0x4318
    15a9:	6a 01                	push   $0x1
    15ab:	e8 d0 24 00 00       	call   3a80 <printf>
    exit();
    15b0:	e8 5e 23 00 00       	call   3913 <exit>
    printf(1, "open unlinkread failed\n");
    15b5:	50                   	push   %eax
    15b6:	50                   	push   %eax
    15b7:	68 00 43 00 00       	push   $0x4300
    15bc:	6a 01                	push   $0x1
    15be:	e8 bd 24 00 00       	call   3a80 <printf>
    exit();
    15c3:	e8 4b 23 00 00       	call   3913 <exit>
    15c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    15cf:	00 

000015d0 <linktest>:
{
    15d0:	55                   	push   %ebp
    15d1:	89 e5                	mov    %esp,%ebp
    15d3:	53                   	push   %ebx
    15d4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    15d7:	68 8c 43 00 00       	push   $0x438c
    15dc:	6a 01                	push   $0x1
    15de:	e8 9d 24 00 00       	call   3a80 <printf>
  unlink("lf1");
    15e3:	c7 04 24 96 43 00 00 	movl   $0x4396,(%esp)
    15ea:	e8 74 23 00 00       	call   3963 <unlink>
  unlink("lf2");
    15ef:	c7 04 24 9a 43 00 00 	movl   $0x439a,(%esp)
    15f6:	e8 68 23 00 00       	call   3963 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    15fb:	58                   	pop    %eax
    15fc:	5a                   	pop    %edx
    15fd:	68 02 02 00 00       	push   $0x202
    1602:	68 96 43 00 00       	push   $0x4396
    1607:	e8 47 23 00 00       	call   3953 <open>
  if(fd < 0){
    160c:	83 c4 10             	add    $0x10,%esp
    160f:	85 c0                	test   %eax,%eax
    1611:	0f 88 1e 01 00 00    	js     1735 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    1617:	83 ec 04             	sub    $0x4,%esp
    161a:	89 c3                	mov    %eax,%ebx
    161c:	6a 05                	push   $0x5
    161e:	68 fa 42 00 00       	push   $0x42fa
    1623:	50                   	push   %eax
    1624:	e8 0a 23 00 00       	call   3933 <write>
    1629:	83 c4 10             	add    $0x10,%esp
    162c:	83 f8 05             	cmp    $0x5,%eax
    162f:	0f 85 98 01 00 00    	jne    17cd <linktest+0x1fd>
  close(fd);
    1635:	83 ec 0c             	sub    $0xc,%esp
    1638:	53                   	push   %ebx
    1639:	e8 fd 22 00 00       	call   393b <close>
  if(link("lf1", "lf2") < 0){
    163e:	5b                   	pop    %ebx
    163f:	58                   	pop    %eax
    1640:	68 9a 43 00 00       	push   $0x439a
    1645:	68 96 43 00 00       	push   $0x4396
    164a:	e8 24 23 00 00       	call   3973 <link>
    164f:	83 c4 10             	add    $0x10,%esp
    1652:	85 c0                	test   %eax,%eax
    1654:	0f 88 60 01 00 00    	js     17ba <linktest+0x1ea>
  unlink("lf1");
    165a:	83 ec 0c             	sub    $0xc,%esp
    165d:	68 96 43 00 00       	push   $0x4396
    1662:	e8 fc 22 00 00       	call   3963 <unlink>
  if(open("lf1", 0) >= 0){
    1667:	58                   	pop    %eax
    1668:	5a                   	pop    %edx
    1669:	6a 00                	push   $0x0
    166b:	68 96 43 00 00       	push   $0x4396
    1670:	e8 de 22 00 00       	call   3953 <open>
    1675:	83 c4 10             	add    $0x10,%esp
    1678:	85 c0                	test   %eax,%eax
    167a:	0f 89 27 01 00 00    	jns    17a7 <linktest+0x1d7>
  fd = open("lf2", 0);
    1680:	83 ec 08             	sub    $0x8,%esp
    1683:	6a 00                	push   $0x0
    1685:	68 9a 43 00 00       	push   $0x439a
    168a:	e8 c4 22 00 00       	call   3953 <open>
  if(fd < 0){
    168f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1692:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1694:	85 c0                	test   %eax,%eax
    1696:	0f 88 f8 00 00 00    	js     1794 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    169c:	83 ec 04             	sub    $0x4,%esp
    169f:	68 00 20 00 00       	push   $0x2000
    16a4:	68 20 86 00 00       	push   $0x8620
    16a9:	50                   	push   %eax
    16aa:	e8 7c 22 00 00       	call   392b <read>
    16af:	83 c4 10             	add    $0x10,%esp
    16b2:	83 f8 05             	cmp    $0x5,%eax
    16b5:	0f 85 c6 00 00 00    	jne    1781 <linktest+0x1b1>
  close(fd);
    16bb:	83 ec 0c             	sub    $0xc,%esp
    16be:	53                   	push   %ebx
    16bf:	e8 77 22 00 00       	call   393b <close>
  if(link("lf2", "lf2") >= 0){
    16c4:	58                   	pop    %eax
    16c5:	5a                   	pop    %edx
    16c6:	68 9a 43 00 00       	push   $0x439a
    16cb:	68 9a 43 00 00       	push   $0x439a
    16d0:	e8 9e 22 00 00       	call   3973 <link>
    16d5:	83 c4 10             	add    $0x10,%esp
    16d8:	85 c0                	test   %eax,%eax
    16da:	0f 89 8e 00 00 00    	jns    176e <linktest+0x19e>
  unlink("lf2");
    16e0:	83 ec 0c             	sub    $0xc,%esp
    16e3:	68 9a 43 00 00       	push   $0x439a
    16e8:	e8 76 22 00 00       	call   3963 <unlink>
  if(link("lf2", "lf1") >= 0){
    16ed:	59                   	pop    %ecx
    16ee:	5b                   	pop    %ebx
    16ef:	68 96 43 00 00       	push   $0x4396
    16f4:	68 9a 43 00 00       	push   $0x439a
    16f9:	e8 75 22 00 00       	call   3973 <link>
    16fe:	83 c4 10             	add    $0x10,%esp
    1701:	85 c0                	test   %eax,%eax
    1703:	79 56                	jns    175b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    1705:	83 ec 08             	sub    $0x8,%esp
    1708:	68 96 43 00 00       	push   $0x4396
    170d:	68 5e 46 00 00       	push   $0x465e
    1712:	e8 5c 22 00 00       	call   3973 <link>
    1717:	83 c4 10             	add    $0x10,%esp
    171a:	85 c0                	test   %eax,%eax
    171c:	79 2a                	jns    1748 <linktest+0x178>
  printf(1, "linktest ok\n");
    171e:	83 ec 08             	sub    $0x8,%esp
    1721:	68 34 44 00 00       	push   $0x4434
    1726:	6a 01                	push   $0x1
    1728:	e8 53 23 00 00       	call   3a80 <printf>
}
    172d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1730:	83 c4 10             	add    $0x10,%esp
    1733:	c9                   	leave
    1734:	c3                   	ret
    printf(1, "create lf1 failed\n");
    1735:	50                   	push   %eax
    1736:	50                   	push   %eax
    1737:	68 9e 43 00 00       	push   $0x439e
    173c:	6a 01                	push   $0x1
    173e:	e8 3d 23 00 00       	call   3a80 <printf>
    exit();
    1743:	e8 cb 21 00 00       	call   3913 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1748:	50                   	push   %eax
    1749:	50                   	push   %eax
    174a:	68 18 44 00 00       	push   $0x4418
    174f:	6a 01                	push   $0x1
    1751:	e8 2a 23 00 00       	call   3a80 <printf>
    exit();
    1756:	e8 b8 21 00 00       	call   3913 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    175b:	52                   	push   %edx
    175c:	52                   	push   %edx
    175d:	68 d4 4f 00 00       	push   $0x4fd4
    1762:	6a 01                	push   $0x1
    1764:	e8 17 23 00 00       	call   3a80 <printf>
    exit();
    1769:	e8 a5 21 00 00       	call   3913 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    176e:	50                   	push   %eax
    176f:	50                   	push   %eax
    1770:	68 fa 43 00 00       	push   $0x43fa
    1775:	6a 01                	push   $0x1
    1777:	e8 04 23 00 00       	call   3a80 <printf>
    exit();
    177c:	e8 92 21 00 00       	call   3913 <exit>
    printf(1, "read lf2 failed\n");
    1781:	51                   	push   %ecx
    1782:	51                   	push   %ecx
    1783:	68 e9 43 00 00       	push   $0x43e9
    1788:	6a 01                	push   $0x1
    178a:	e8 f1 22 00 00       	call   3a80 <printf>
    exit();
    178f:	e8 7f 21 00 00       	call   3913 <exit>
    printf(1, "open lf2 failed\n");
    1794:	53                   	push   %ebx
    1795:	53                   	push   %ebx
    1796:	68 d8 43 00 00       	push   $0x43d8
    179b:	6a 01                	push   $0x1
    179d:	e8 de 22 00 00       	call   3a80 <printf>
    exit();
    17a2:	e8 6c 21 00 00       	call   3913 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    17a7:	50                   	push   %eax
    17a8:	50                   	push   %eax
    17a9:	68 ac 4f 00 00       	push   $0x4fac
    17ae:	6a 01                	push   $0x1
    17b0:	e8 cb 22 00 00       	call   3a80 <printf>
    exit();
    17b5:	e8 59 21 00 00       	call   3913 <exit>
    printf(1, "link lf1 lf2 failed\n");
    17ba:	51                   	push   %ecx
    17bb:	51                   	push   %ecx
    17bc:	68 c3 43 00 00       	push   $0x43c3
    17c1:	6a 01                	push   $0x1
    17c3:	e8 b8 22 00 00       	call   3a80 <printf>
    exit();
    17c8:	e8 46 21 00 00       	call   3913 <exit>
    printf(1, "write lf1 failed\n");
    17cd:	50                   	push   %eax
    17ce:	50                   	push   %eax
    17cf:	68 b1 43 00 00       	push   $0x43b1
    17d4:	6a 01                	push   $0x1
    17d6:	e8 a5 22 00 00       	call   3a80 <printf>
    exit();
    17db:	e8 33 21 00 00       	call   3913 <exit>

000017e0 <concreate>:
{
    17e0:	55                   	push   %ebp
    17e1:	89 e5                	mov    %esp,%ebp
    17e3:	57                   	push   %edi
    17e4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    17e5:	31 f6                	xor    %esi,%esi
{
    17e7:	53                   	push   %ebx
    17e8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17eb:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    17ee:	68 41 44 00 00       	push   $0x4441
    17f3:	6a 01                	push   $0x1
    17f5:	e8 86 22 00 00       	call   3a80 <printf>
  file[0] = 'C';
    17fa:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    17fe:	83 c4 10             	add    $0x10,%esp
    1801:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    1805:	eb 4c                	jmp    1853 <concreate+0x73>
    1807:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    180e:	00 
    180f:	90                   	nop
    1810:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    1816:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    181b:	0f 83 8f 00 00 00    	jae    18b0 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    1821:	83 ec 08             	sub    $0x8,%esp
    1824:	68 02 02 00 00       	push   $0x202
    1829:	53                   	push   %ebx
    182a:	e8 24 21 00 00       	call   3953 <open>
      if(fd < 0){
    182f:	83 c4 10             	add    $0x10,%esp
    1832:	85 c0                	test   %eax,%eax
    1834:	78 63                	js     1899 <concreate+0xb9>
      close(fd);
    1836:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1839:	83 c6 01             	add    $0x1,%esi
      close(fd);
    183c:	50                   	push   %eax
    183d:	e8 f9 20 00 00       	call   393b <close>
    1842:	83 c4 10             	add    $0x10,%esp
      wait();
    1845:	e8 d1 20 00 00       	call   391b <wait>
  for(i = 0; i < 40; i++){
    184a:	83 fe 28             	cmp    $0x28,%esi
    184d:	0f 84 7f 00 00 00    	je     18d2 <concreate+0xf2>
    unlink(file);
    1853:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1856:	8d 46 30             	lea    0x30(%esi),%eax
    1859:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    185c:	53                   	push   %ebx
    185d:	e8 01 21 00 00       	call   3963 <unlink>
    pid = fork();
    1862:	e8 a4 20 00 00       	call   390b <fork>
    if(pid && (i % 3) == 1){
    1867:	83 c4 10             	add    $0x10,%esp
    186a:	85 c0                	test   %eax,%eax
    186c:	75 a2                	jne    1810 <concreate+0x30>
      link("C0", file);
    186e:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    1874:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    187a:	0f 83 d0 00 00 00    	jae    1950 <concreate+0x170>
      fd = open(file, O_CREATE | O_RDWR);
    1880:	83 ec 08             	sub    $0x8,%esp
    1883:	68 02 02 00 00       	push   $0x202
    1888:	53                   	push   %ebx
    1889:	e8 c5 20 00 00       	call   3953 <open>
      if(fd < 0){
    188e:	83 c4 10             	add    $0x10,%esp
    1891:	85 c0                	test   %eax,%eax
    1893:	0f 89 ea 01 00 00    	jns    1a83 <concreate+0x2a3>
        printf(1, "concreate create %s failed\n", file);
    1899:	83 ec 04             	sub    $0x4,%esp
    189c:	53                   	push   %ebx
    189d:	68 54 44 00 00       	push   $0x4454
    18a2:	6a 01                	push   $0x1
    18a4:	e8 d7 21 00 00       	call   3a80 <printf>
        exit();
    18a9:	e8 65 20 00 00       	call   3913 <exit>
    18ae:	66 90                	xchg   %ax,%ax
      link("C0", file);
    18b0:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    18b3:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    18b6:	53                   	push   %ebx
    18b7:	68 51 44 00 00       	push   $0x4451
    18bc:	e8 b2 20 00 00       	call   3973 <link>
    18c1:	83 c4 10             	add    $0x10,%esp
      wait();
    18c4:	e8 52 20 00 00       	call   391b <wait>
  for(i = 0; i < 40; i++){
    18c9:	83 fe 28             	cmp    $0x28,%esi
    18cc:	0f 85 81 ff ff ff    	jne    1853 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    18d2:	83 ec 04             	sub    $0x4,%esp
    18d5:	8d 45 c0             	lea    -0x40(%ebp),%eax
    18d8:	6a 28                	push   $0x28
    18da:	6a 00                	push   $0x0
    18dc:	50                   	push   %eax
    18dd:	e8 ae 1e 00 00       	call   3790 <memset>
  fd = open(".", 0);
    18e2:	5e                   	pop    %esi
    18e3:	5f                   	pop    %edi
    18e4:	6a 00                	push   $0x0
    18e6:	68 5e 46 00 00       	push   $0x465e
    18eb:	8d 7d b0             	lea    -0x50(%ebp),%edi
    18ee:	e8 60 20 00 00       	call   3953 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    18f3:	83 c4 10             	add    $0x10,%esp
  n = 0;
    18f6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    18fd:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    18ff:	90                   	nop
    1900:	83 ec 04             	sub    $0x4,%esp
    1903:	6a 10                	push   $0x10
    1905:	57                   	push   %edi
    1906:	56                   	push   %esi
    1907:	e8 1f 20 00 00       	call   392b <read>
    190c:	83 c4 10             	add    $0x10,%esp
    190f:	85 c0                	test   %eax,%eax
    1911:	7e 5d                	jle    1970 <concreate+0x190>
    if(de.inum == 0)
    1913:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1918:	74 e6                	je     1900 <concreate+0x120>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    191a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    191e:	75 e0                	jne    1900 <concreate+0x120>
    1920:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1924:	75 da                	jne    1900 <concreate+0x120>
      i = de.name[1] - '0';
    1926:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    192a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    192d:	83 f8 27             	cmp    $0x27,%eax
    1930:	0f 87 5e 01 00 00    	ja     1a94 <concreate+0x2b4>
      if(fa[i]){
    1936:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    193b:	0f 85 7e 01 00 00    	jne    1abf <concreate+0x2df>
      n++;
    1941:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    1945:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    194a:	eb b4                	jmp    1900 <concreate+0x120>
    194c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      link("C0", file);
    1950:	83 ec 08             	sub    $0x8,%esp
    1953:	53                   	push   %ebx
    1954:	68 51 44 00 00       	push   $0x4451
    1959:	e8 15 20 00 00       	call   3973 <link>
    195e:	83 c4 10             	add    $0x10,%esp
      exit();
    1961:	e8 ad 1f 00 00       	call   3913 <exit>
    1966:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    196d:	00 
    196e:	66 90                	xchg   %ax,%ax
  close(fd);
    1970:	83 ec 0c             	sub    $0xc,%esp
    1973:	56                   	push   %esi
    1974:	e8 c2 1f 00 00       	call   393b <close>
  if(n != 40){
    1979:	83 c4 10             	add    $0x10,%esp
    197c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1980:	0f 85 26 01 00 00    	jne    1aac <concreate+0x2cc>
  for(i = 0; i < 40; i++){
    1986:	31 f6                	xor    %esi,%esi
    1988:	eb 48                	jmp    19d2 <concreate+0x1f2>
    198a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1990:	83 f8 01             	cmp    $0x1,%eax
    1993:	75 04                	jne    1999 <concreate+0x1b9>
    1995:	85 ff                	test   %edi,%edi
    1997:	75 68                	jne    1a01 <concreate+0x221>
      unlink(file);
    1999:	83 ec 0c             	sub    $0xc,%esp
    199c:	53                   	push   %ebx
    199d:	e8 c1 1f 00 00       	call   3963 <unlink>
      unlink(file);
    19a2:	89 1c 24             	mov    %ebx,(%esp)
    19a5:	e8 b9 1f 00 00       	call   3963 <unlink>
      unlink(file);
    19aa:	89 1c 24             	mov    %ebx,(%esp)
    19ad:	e8 b1 1f 00 00       	call   3963 <unlink>
      unlink(file);
    19b2:	89 1c 24             	mov    %ebx,(%esp)
    19b5:	e8 a9 1f 00 00       	call   3963 <unlink>
    19ba:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    19bd:	85 ff                	test   %edi,%edi
    19bf:	74 a0                	je     1961 <concreate+0x181>
      wait();
    19c1:	e8 55 1f 00 00       	call   391b <wait>
  for(i = 0; i < 40; i++){
    19c6:	83 c6 01             	add    $0x1,%esi
    19c9:	83 fe 28             	cmp    $0x28,%esi
    19cc:	0f 84 86 00 00 00    	je     1a58 <concreate+0x278>
    file[1] = '0' + i;
    19d2:	8d 46 30             	lea    0x30(%esi),%eax
    19d5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    19d8:	e8 2e 1f 00 00       	call   390b <fork>
    19dd:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    19df:	85 c0                	test   %eax,%eax
    19e1:	0f 88 88 00 00 00    	js     1a6f <concreate+0x28f>
    if(((i % 3) == 0 && pid == 0) ||
    19e7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    19ec:	f7 e6                	mul    %esi
    19ee:	89 d0                	mov    %edx,%eax
    19f0:	83 e2 fe             	and    $0xfffffffe,%edx
    19f3:	d1 e8                	shr    $1,%eax
    19f5:	01 c2                	add    %eax,%edx
    19f7:	89 f0                	mov    %esi,%eax
    19f9:	29 d0                	sub    %edx,%eax
    19fb:	89 c1                	mov    %eax,%ecx
    19fd:	09 f9                	or     %edi,%ecx
    19ff:	75 8f                	jne    1990 <concreate+0x1b0>
      close(open(file, 0));
    1a01:	83 ec 08             	sub    $0x8,%esp
    1a04:	6a 00                	push   $0x0
    1a06:	53                   	push   %ebx
    1a07:	e8 47 1f 00 00       	call   3953 <open>
    1a0c:	89 04 24             	mov    %eax,(%esp)
    1a0f:	e8 27 1f 00 00       	call   393b <close>
      close(open(file, 0));
    1a14:	58                   	pop    %eax
    1a15:	5a                   	pop    %edx
    1a16:	6a 00                	push   $0x0
    1a18:	53                   	push   %ebx
    1a19:	e8 35 1f 00 00       	call   3953 <open>
    1a1e:	89 04 24             	mov    %eax,(%esp)
    1a21:	e8 15 1f 00 00       	call   393b <close>
      close(open(file, 0));
    1a26:	59                   	pop    %ecx
    1a27:	58                   	pop    %eax
    1a28:	6a 00                	push   $0x0
    1a2a:	53                   	push   %ebx
    1a2b:	e8 23 1f 00 00       	call   3953 <open>
    1a30:	89 04 24             	mov    %eax,(%esp)
    1a33:	e8 03 1f 00 00       	call   393b <close>
      close(open(file, 0));
    1a38:	58                   	pop    %eax
    1a39:	5a                   	pop    %edx
    1a3a:	6a 00                	push   $0x0
    1a3c:	53                   	push   %ebx
    1a3d:	e8 11 1f 00 00       	call   3953 <open>
    1a42:	89 04 24             	mov    %eax,(%esp)
    1a45:	e8 f1 1e 00 00       	call   393b <close>
    1a4a:	83 c4 10             	add    $0x10,%esp
    1a4d:	e9 6b ff ff ff       	jmp    19bd <concreate+0x1dd>
    1a52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1a58:	83 ec 08             	sub    $0x8,%esp
    1a5b:	68 a6 44 00 00       	push   $0x44a6
    1a60:	6a 01                	push   $0x1
    1a62:	e8 19 20 00 00       	call   3a80 <printf>
}
    1a67:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a6a:	5b                   	pop    %ebx
    1a6b:	5e                   	pop    %esi
    1a6c:	5f                   	pop    %edi
    1a6d:	5d                   	pop    %ebp
    1a6e:	c3                   	ret
      printf(1, "fork failed\n");
    1a6f:	83 ec 08             	sub    $0x8,%esp
    1a72:	68 29 4d 00 00       	push   $0x4d29
    1a77:	6a 01                	push   $0x1
    1a79:	e8 02 20 00 00       	call   3a80 <printf>
      exit();
    1a7e:	e8 90 1e 00 00       	call   3913 <exit>
      close(fd);
    1a83:	83 ec 0c             	sub    $0xc,%esp
    1a86:	50                   	push   %eax
    1a87:	e8 af 1e 00 00       	call   393b <close>
    1a8c:	83 c4 10             	add    $0x10,%esp
    1a8f:	e9 cd fe ff ff       	jmp    1961 <concreate+0x181>
        printf(1, "concreate weird file %s\n", de.name);
    1a94:	83 ec 04             	sub    $0x4,%esp
    1a97:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a9a:	50                   	push   %eax
    1a9b:	68 70 44 00 00       	push   $0x4470
    1aa0:	6a 01                	push   $0x1
    1aa2:	e8 d9 1f 00 00       	call   3a80 <printf>
        exit();
    1aa7:	e8 67 1e 00 00       	call   3913 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1aac:	51                   	push   %ecx
    1aad:	51                   	push   %ecx
    1aae:	68 f8 4f 00 00       	push   $0x4ff8
    1ab3:	6a 01                	push   $0x1
    1ab5:	e8 c6 1f 00 00       	call   3a80 <printf>
    exit();
    1aba:	e8 54 1e 00 00       	call   3913 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1abf:	83 ec 04             	sub    $0x4,%esp
    1ac2:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1ac5:	50                   	push   %eax
    1ac6:	68 89 44 00 00       	push   $0x4489
    1acb:	6a 01                	push   $0x1
    1acd:	e8 ae 1f 00 00       	call   3a80 <printf>
        exit();
    1ad2:	e8 3c 1e 00 00       	call   3913 <exit>
    1ad7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1ade:	00 
    1adf:	90                   	nop

00001ae0 <linkunlink>:
{
    1ae0:	55                   	push   %ebp
    1ae1:	89 e5                	mov    %esp,%ebp
    1ae3:	57                   	push   %edi
    1ae4:	56                   	push   %esi
    1ae5:	53                   	push   %ebx
    1ae6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1ae9:	68 b4 44 00 00       	push   $0x44b4
    1aee:	6a 01                	push   $0x1
    1af0:	e8 8b 1f 00 00       	call   3a80 <printf>
  unlink("x");
    1af5:	c7 04 24 41 47 00 00 	movl   $0x4741,(%esp)
    1afc:	e8 62 1e 00 00       	call   3963 <unlink>
  pid = fork();
    1b01:	e8 05 1e 00 00       	call   390b <fork>
  if(pid < 0){
    1b06:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1b09:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1b0c:	85 c0                	test   %eax,%eax
    1b0e:	0f 88 b6 00 00 00    	js     1bca <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1b14:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1b18:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1b1d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b22:	19 ff                	sbb    %edi,%edi
    1b24:	83 e7 60             	and    $0x60,%edi
    1b27:	83 c7 01             	add    $0x1,%edi
  for(i = 0; i < 100; i++){
    1b2a:	eb 1e                	jmp    1b4a <linkunlink+0x6a>
    1b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b30:	83 f8 01             	cmp    $0x1,%eax
    1b33:	74 7b                	je     1bb0 <linkunlink+0xd0>
      unlink("x");
    1b35:	83 ec 0c             	sub    $0xc,%esp
    1b38:	68 41 47 00 00       	push   $0x4741
    1b3d:	e8 21 1e 00 00       	call   3963 <unlink>
    1b42:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b45:	83 eb 01             	sub    $0x1,%ebx
    1b48:	74 41                	je     1b8b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    1b4a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b50:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b56:	89 f8                	mov    %edi,%eax
    1b58:	f7 e6                	mul    %esi
    1b5a:	89 d0                	mov    %edx,%eax
    1b5c:	83 e2 fe             	and    $0xfffffffe,%edx
    1b5f:	d1 e8                	shr    $1,%eax
    1b61:	01 c2                	add    %eax,%edx
    1b63:	89 f8                	mov    %edi,%eax
    1b65:	29 d0                	sub    %edx,%eax
    1b67:	75 c7                	jne    1b30 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1b69:	83 ec 08             	sub    $0x8,%esp
    1b6c:	68 02 02 00 00       	push   $0x202
    1b71:	68 41 47 00 00       	push   $0x4741
    1b76:	e8 d8 1d 00 00       	call   3953 <open>
    1b7b:	89 04 24             	mov    %eax,(%esp)
    1b7e:	e8 b8 1d 00 00       	call   393b <close>
    1b83:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b86:	83 eb 01             	sub    $0x1,%ebx
    1b89:	75 bf                	jne    1b4a <linkunlink+0x6a>
  if(pid)
    1b8b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b8e:	85 c0                	test   %eax,%eax
    1b90:	74 4b                	je     1bdd <linkunlink+0xfd>
    wait();
    1b92:	e8 84 1d 00 00       	call   391b <wait>
  printf(1, "linkunlink ok\n");
    1b97:	83 ec 08             	sub    $0x8,%esp
    1b9a:	68 c9 44 00 00       	push   $0x44c9
    1b9f:	6a 01                	push   $0x1
    1ba1:	e8 da 1e 00 00       	call   3a80 <printf>
}
    1ba6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ba9:	5b                   	pop    %ebx
    1baa:	5e                   	pop    %esi
    1bab:	5f                   	pop    %edi
    1bac:	5d                   	pop    %ebp
    1bad:	c3                   	ret
    1bae:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    1bb0:	83 ec 08             	sub    $0x8,%esp
    1bb3:	68 41 47 00 00       	push   $0x4741
    1bb8:	68 c5 44 00 00       	push   $0x44c5
    1bbd:	e8 b1 1d 00 00       	call   3973 <link>
    1bc2:	83 c4 10             	add    $0x10,%esp
    1bc5:	e9 7b ff ff ff       	jmp    1b45 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1bca:	52                   	push   %edx
    1bcb:	52                   	push   %edx
    1bcc:	68 29 4d 00 00       	push   $0x4d29
    1bd1:	6a 01                	push   $0x1
    1bd3:	e8 a8 1e 00 00       	call   3a80 <printf>
    exit();
    1bd8:	e8 36 1d 00 00       	call   3913 <exit>
    exit();
    1bdd:	e8 31 1d 00 00       	call   3913 <exit>
    1be2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1be9:	00 
    1bea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001bf0 <bigdir>:
{
    1bf0:	55                   	push   %ebp
    1bf1:	89 e5                	mov    %esp,%ebp
    1bf3:	57                   	push   %edi
    1bf4:	56                   	push   %esi
    1bf5:	53                   	push   %ebx
    1bf6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1bf9:	68 d8 44 00 00       	push   $0x44d8
    1bfe:	6a 01                	push   $0x1
    1c00:	e8 7b 1e 00 00       	call   3a80 <printf>
  unlink("bd");
    1c05:	c7 04 24 e5 44 00 00 	movl   $0x44e5,(%esp)
    1c0c:	e8 52 1d 00 00       	call   3963 <unlink>
  fd = open("bd", O_CREATE);
    1c11:	5a                   	pop    %edx
    1c12:	59                   	pop    %ecx
    1c13:	68 00 02 00 00       	push   $0x200
    1c18:	68 e5 44 00 00       	push   $0x44e5
    1c1d:	e8 31 1d 00 00       	call   3953 <open>
  if(fd < 0){
    1c22:	83 c4 10             	add    $0x10,%esp
    1c25:	85 c0                	test   %eax,%eax
    1c27:	0f 88 de 00 00 00    	js     1d0b <bigdir+0x11b>
  close(fd);
    1c2d:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1c30:	31 f6                	xor    %esi,%esi
    1c32:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1c35:	50                   	push   %eax
    1c36:	e8 00 1d 00 00       	call   393b <close>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c40:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c42:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c45:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c49:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c4c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c50:	83 c0 30             	add    $0x30,%eax
    1c53:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c56:	89 f0                	mov    %esi,%eax
    1c58:	83 e0 3f             	and    $0x3f,%eax
    1c5b:	83 c0 30             	add    $0x30,%eax
    1c5e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1c61:	57                   	push   %edi
    1c62:	68 e5 44 00 00       	push   $0x44e5
    1c67:	e8 07 1d 00 00       	call   3973 <link>
    1c6c:	83 c4 10             	add    $0x10,%esp
    1c6f:	89 c3                	mov    %eax,%ebx
    1c71:	85 c0                	test   %eax,%eax
    1c73:	75 6e                	jne    1ce3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1c75:	83 c6 01             	add    $0x1,%esi
    1c78:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c7e:	75 c0                	jne    1c40 <bigdir+0x50>
  unlink("bd");
    1c80:	83 ec 0c             	sub    $0xc,%esp
    1c83:	68 e5 44 00 00       	push   $0x44e5
    1c88:	e8 d6 1c 00 00       	call   3963 <unlink>
    1c8d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1c90:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1c92:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1c95:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c99:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c9c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1ca0:	83 c0 30             	add    $0x30,%eax
    1ca3:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1ca6:	89 d8                	mov    %ebx,%eax
    1ca8:	83 e0 3f             	and    $0x3f,%eax
    1cab:	83 c0 30             	add    $0x30,%eax
    1cae:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1cb1:	57                   	push   %edi
    1cb2:	e8 ac 1c 00 00       	call   3963 <unlink>
    1cb7:	83 c4 10             	add    $0x10,%esp
    1cba:	85 c0                	test   %eax,%eax
    1cbc:	75 39                	jne    1cf7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1cbe:	83 c3 01             	add    $0x1,%ebx
    1cc1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1cc7:	75 c7                	jne    1c90 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1cc9:	83 ec 08             	sub    $0x8,%esp
    1ccc:	68 27 45 00 00       	push   $0x4527
    1cd1:	6a 01                	push   $0x1
    1cd3:	e8 a8 1d 00 00       	call   3a80 <printf>
    1cd8:	83 c4 10             	add    $0x10,%esp
}
    1cdb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cde:	5b                   	pop    %ebx
    1cdf:	5e                   	pop    %esi
    1ce0:	5f                   	pop    %edi
    1ce1:	5d                   	pop    %ebp
    1ce2:	c3                   	ret
      printf(1, "bigdir link failed\n");
    1ce3:	83 ec 08             	sub    $0x8,%esp
    1ce6:	68 fe 44 00 00       	push   $0x44fe
    1ceb:	6a 01                	push   $0x1
    1ced:	e8 8e 1d 00 00       	call   3a80 <printf>
      exit();
    1cf2:	e8 1c 1c 00 00       	call   3913 <exit>
      printf(1, "bigdir unlink failed");
    1cf7:	83 ec 08             	sub    $0x8,%esp
    1cfa:	68 12 45 00 00       	push   $0x4512
    1cff:	6a 01                	push   $0x1
    1d01:	e8 7a 1d 00 00       	call   3a80 <printf>
      exit();
    1d06:	e8 08 1c 00 00       	call   3913 <exit>
    printf(1, "bigdir create failed\n");
    1d0b:	50                   	push   %eax
    1d0c:	50                   	push   %eax
    1d0d:	68 e8 44 00 00       	push   $0x44e8
    1d12:	6a 01                	push   $0x1
    1d14:	e8 67 1d 00 00       	call   3a80 <printf>
    exit();
    1d19:	e8 f5 1b 00 00       	call   3913 <exit>
    1d1e:	66 90                	xchg   %ax,%ax

00001d20 <subdir>:
{
    1d20:	55                   	push   %ebp
    1d21:	89 e5                	mov    %esp,%ebp
    1d23:	53                   	push   %ebx
    1d24:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d27:	68 32 45 00 00       	push   $0x4532
    1d2c:	6a 01                	push   $0x1
    1d2e:	e8 4d 1d 00 00       	call   3a80 <printf>
  unlink("ff");
    1d33:	c7 04 24 bb 45 00 00 	movl   $0x45bb,(%esp)
    1d3a:	e8 24 1c 00 00       	call   3963 <unlink>
  if(mkdir("dd") != 0){
    1d3f:	c7 04 24 58 46 00 00 	movl   $0x4658,(%esp)
    1d46:	e8 30 1c 00 00       	call   397b <mkdir>
    1d4b:	83 c4 10             	add    $0x10,%esp
    1d4e:	85 c0                	test   %eax,%eax
    1d50:	0f 85 b3 05 00 00    	jne    2309 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d56:	83 ec 08             	sub    $0x8,%esp
    1d59:	68 02 02 00 00       	push   $0x202
    1d5e:	68 91 45 00 00       	push   $0x4591
    1d63:	e8 eb 1b 00 00       	call   3953 <open>
  if(fd < 0){
    1d68:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d6b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1d6d:	85 c0                	test   %eax,%eax
    1d6f:	0f 88 81 05 00 00    	js     22f6 <subdir+0x5d6>
  write(fd, "ff", 2);
    1d75:	83 ec 04             	sub    $0x4,%esp
    1d78:	6a 02                	push   $0x2
    1d7a:	68 bb 45 00 00       	push   $0x45bb
    1d7f:	50                   	push   %eax
    1d80:	e8 ae 1b 00 00       	call   3933 <write>
  close(fd);
    1d85:	89 1c 24             	mov    %ebx,(%esp)
    1d88:	e8 ae 1b 00 00       	call   393b <close>
  if(unlink("dd") >= 0){
    1d8d:	c7 04 24 58 46 00 00 	movl   $0x4658,(%esp)
    1d94:	e8 ca 1b 00 00       	call   3963 <unlink>
    1d99:	83 c4 10             	add    $0x10,%esp
    1d9c:	85 c0                	test   %eax,%eax
    1d9e:	0f 89 3f 05 00 00    	jns    22e3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1da4:	83 ec 0c             	sub    $0xc,%esp
    1da7:	68 6c 45 00 00       	push   $0x456c
    1dac:	e8 ca 1b 00 00       	call   397b <mkdir>
    1db1:	83 c4 10             	add    $0x10,%esp
    1db4:	85 c0                	test   %eax,%eax
    1db6:	0f 85 14 05 00 00    	jne    22d0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dbc:	83 ec 08             	sub    $0x8,%esp
    1dbf:	68 02 02 00 00       	push   $0x202
    1dc4:	68 8e 45 00 00       	push   $0x458e
    1dc9:	e8 85 1b 00 00       	call   3953 <open>
  if(fd < 0){
    1dce:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dd1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1dd3:	85 c0                	test   %eax,%eax
    1dd5:	0f 88 24 04 00 00    	js     21ff <subdir+0x4df>
  write(fd, "FF", 2);
    1ddb:	83 ec 04             	sub    $0x4,%esp
    1dde:	6a 02                	push   $0x2
    1de0:	68 af 45 00 00       	push   $0x45af
    1de5:	50                   	push   %eax
    1de6:	e8 48 1b 00 00       	call   3933 <write>
  close(fd);
    1deb:	89 1c 24             	mov    %ebx,(%esp)
    1dee:	e8 48 1b 00 00       	call   393b <close>
  fd = open("dd/dd/../ff", 0);
    1df3:	58                   	pop    %eax
    1df4:	5a                   	pop    %edx
    1df5:	6a 00                	push   $0x0
    1df7:	68 b2 45 00 00       	push   $0x45b2
    1dfc:	e8 52 1b 00 00       	call   3953 <open>
  if(fd < 0){
    1e01:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    1e04:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1e06:	85 c0                	test   %eax,%eax
    1e08:	0f 88 de 03 00 00    	js     21ec <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1e0e:	83 ec 04             	sub    $0x4,%esp
    1e11:	68 00 20 00 00       	push   $0x2000
    1e16:	68 20 86 00 00       	push   $0x8620
    1e1b:	50                   	push   %eax
    1e1c:	e8 0a 1b 00 00       	call   392b <read>
  if(cc != 2 || buf[0] != 'f'){
    1e21:	83 c4 10             	add    $0x10,%esp
    1e24:	83 f8 02             	cmp    $0x2,%eax
    1e27:	0f 85 3a 03 00 00    	jne    2167 <subdir+0x447>
    1e2d:	80 3d 20 86 00 00 66 	cmpb   $0x66,0x8620
    1e34:	0f 85 2d 03 00 00    	jne    2167 <subdir+0x447>
  close(fd);
    1e3a:	83 ec 0c             	sub    $0xc,%esp
    1e3d:	53                   	push   %ebx
    1e3e:	e8 f8 1a 00 00       	call   393b <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e43:	59                   	pop    %ecx
    1e44:	5b                   	pop    %ebx
    1e45:	68 f2 45 00 00       	push   $0x45f2
    1e4a:	68 8e 45 00 00       	push   $0x458e
    1e4f:	e8 1f 1b 00 00       	call   3973 <link>
    1e54:	83 c4 10             	add    $0x10,%esp
    1e57:	85 c0                	test   %eax,%eax
    1e59:	0f 85 c6 03 00 00    	jne    2225 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e5f:	83 ec 0c             	sub    $0xc,%esp
    1e62:	68 8e 45 00 00       	push   $0x458e
    1e67:	e8 f7 1a 00 00       	call   3963 <unlink>
    1e6c:	83 c4 10             	add    $0x10,%esp
    1e6f:	85 c0                	test   %eax,%eax
    1e71:	0f 85 16 03 00 00    	jne    218d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1e77:	83 ec 08             	sub    $0x8,%esp
    1e7a:	6a 00                	push   $0x0
    1e7c:	68 8e 45 00 00       	push   $0x458e
    1e81:	e8 cd 1a 00 00       	call   3953 <open>
    1e86:	83 c4 10             	add    $0x10,%esp
    1e89:	85 c0                	test   %eax,%eax
    1e8b:	0f 89 2c 04 00 00    	jns    22bd <subdir+0x59d>
  if(chdir("dd") != 0){
    1e91:	83 ec 0c             	sub    $0xc,%esp
    1e94:	68 58 46 00 00       	push   $0x4658
    1e99:	e8 e5 1a 00 00       	call   3983 <chdir>
    1e9e:	83 c4 10             	add    $0x10,%esp
    1ea1:	85 c0                	test   %eax,%eax
    1ea3:	0f 85 01 04 00 00    	jne    22aa <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1ea9:	83 ec 0c             	sub    $0xc,%esp
    1eac:	68 26 46 00 00       	push   $0x4626
    1eb1:	e8 cd 1a 00 00       	call   3983 <chdir>
    1eb6:	83 c4 10             	add    $0x10,%esp
    1eb9:	85 c0                	test   %eax,%eax
    1ebb:	0f 85 b9 02 00 00    	jne    217a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1ec1:	83 ec 0c             	sub    $0xc,%esp
    1ec4:	68 4c 46 00 00       	push   $0x464c
    1ec9:	e8 b5 1a 00 00       	call   3983 <chdir>
    1ece:	83 c4 10             	add    $0x10,%esp
    1ed1:	85 c0                	test   %eax,%eax
    1ed3:	0f 85 a1 02 00 00    	jne    217a <subdir+0x45a>
  if(chdir("./..") != 0){
    1ed9:	83 ec 0c             	sub    $0xc,%esp
    1edc:	68 5b 46 00 00       	push   $0x465b
    1ee1:	e8 9d 1a 00 00       	call   3983 <chdir>
    1ee6:	83 c4 10             	add    $0x10,%esp
    1ee9:	85 c0                	test   %eax,%eax
    1eeb:	0f 85 21 03 00 00    	jne    2212 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1ef1:	83 ec 08             	sub    $0x8,%esp
    1ef4:	6a 00                	push   $0x0
    1ef6:	68 f2 45 00 00       	push   $0x45f2
    1efb:	e8 53 1a 00 00       	call   3953 <open>
  if(fd < 0){
    1f00:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    1f03:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f05:	85 c0                	test   %eax,%eax
    1f07:	0f 88 e0 04 00 00    	js     23ed <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1f0d:	83 ec 04             	sub    $0x4,%esp
    1f10:	68 00 20 00 00       	push   $0x2000
    1f15:	68 20 86 00 00       	push   $0x8620
    1f1a:	50                   	push   %eax
    1f1b:	e8 0b 1a 00 00       	call   392b <read>
    1f20:	83 c4 10             	add    $0x10,%esp
    1f23:	83 f8 02             	cmp    $0x2,%eax
    1f26:	0f 85 ae 04 00 00    	jne    23da <subdir+0x6ba>
  close(fd);
    1f2c:	83 ec 0c             	sub    $0xc,%esp
    1f2f:	53                   	push   %ebx
    1f30:	e8 06 1a 00 00       	call   393b <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f35:	58                   	pop    %eax
    1f36:	5a                   	pop    %edx
    1f37:	6a 00                	push   $0x0
    1f39:	68 8e 45 00 00       	push   $0x458e
    1f3e:	e8 10 1a 00 00       	call   3953 <open>
    1f43:	83 c4 10             	add    $0x10,%esp
    1f46:	85 c0                	test   %eax,%eax
    1f48:	0f 89 65 02 00 00    	jns    21b3 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f4e:	83 ec 08             	sub    $0x8,%esp
    1f51:	68 02 02 00 00       	push   $0x202
    1f56:	68 a6 46 00 00       	push   $0x46a6
    1f5b:	e8 f3 19 00 00       	call   3953 <open>
    1f60:	83 c4 10             	add    $0x10,%esp
    1f63:	85 c0                	test   %eax,%eax
    1f65:	0f 89 35 02 00 00    	jns    21a0 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1f6b:	83 ec 08             	sub    $0x8,%esp
    1f6e:	68 02 02 00 00       	push   $0x202
    1f73:	68 cb 46 00 00       	push   $0x46cb
    1f78:	e8 d6 19 00 00       	call   3953 <open>
    1f7d:	83 c4 10             	add    $0x10,%esp
    1f80:	85 c0                	test   %eax,%eax
    1f82:	0f 89 0f 03 00 00    	jns    2297 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1f88:	83 ec 08             	sub    $0x8,%esp
    1f8b:	68 00 02 00 00       	push   $0x200
    1f90:	68 58 46 00 00       	push   $0x4658
    1f95:	e8 b9 19 00 00       	call   3953 <open>
    1f9a:	83 c4 10             	add    $0x10,%esp
    1f9d:	85 c0                	test   %eax,%eax
    1f9f:	0f 89 df 02 00 00    	jns    2284 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1fa5:	83 ec 08             	sub    $0x8,%esp
    1fa8:	6a 02                	push   $0x2
    1faa:	68 58 46 00 00       	push   $0x4658
    1faf:	e8 9f 19 00 00       	call   3953 <open>
    1fb4:	83 c4 10             	add    $0x10,%esp
    1fb7:	85 c0                	test   %eax,%eax
    1fb9:	0f 89 b2 02 00 00    	jns    2271 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1fbf:	83 ec 08             	sub    $0x8,%esp
    1fc2:	6a 01                	push   $0x1
    1fc4:	68 58 46 00 00       	push   $0x4658
    1fc9:	e8 85 19 00 00       	call   3953 <open>
    1fce:	83 c4 10             	add    $0x10,%esp
    1fd1:	85 c0                	test   %eax,%eax
    1fd3:	0f 89 85 02 00 00    	jns    225e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    1fd9:	83 ec 08             	sub    $0x8,%esp
    1fdc:	68 3a 47 00 00       	push   $0x473a
    1fe1:	68 a6 46 00 00       	push   $0x46a6
    1fe6:	e8 88 19 00 00       	call   3973 <link>
    1feb:	83 c4 10             	add    $0x10,%esp
    1fee:	85 c0                	test   %eax,%eax
    1ff0:	0f 84 55 02 00 00    	je     224b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    1ff6:	83 ec 08             	sub    $0x8,%esp
    1ff9:	68 3a 47 00 00       	push   $0x473a
    1ffe:	68 cb 46 00 00       	push   $0x46cb
    2003:	e8 6b 19 00 00       	call   3973 <link>
    2008:	83 c4 10             	add    $0x10,%esp
    200b:	85 c0                	test   %eax,%eax
    200d:	0f 84 25 02 00 00    	je     2238 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2013:	83 ec 08             	sub    $0x8,%esp
    2016:	68 f2 45 00 00       	push   $0x45f2
    201b:	68 91 45 00 00       	push   $0x4591
    2020:	e8 4e 19 00 00       	call   3973 <link>
    2025:	83 c4 10             	add    $0x10,%esp
    2028:	85 c0                	test   %eax,%eax
    202a:	0f 84 a9 01 00 00    	je     21d9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2030:	83 ec 0c             	sub    $0xc,%esp
    2033:	68 a6 46 00 00       	push   $0x46a6
    2038:	e8 3e 19 00 00       	call   397b <mkdir>
    203d:	83 c4 10             	add    $0x10,%esp
    2040:	85 c0                	test   %eax,%eax
    2042:	0f 84 7e 01 00 00    	je     21c6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2048:	83 ec 0c             	sub    $0xc,%esp
    204b:	68 cb 46 00 00       	push   $0x46cb
    2050:	e8 26 19 00 00       	call   397b <mkdir>
    2055:	83 c4 10             	add    $0x10,%esp
    2058:	85 c0                	test   %eax,%eax
    205a:	0f 84 67 03 00 00    	je     23c7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    2060:	83 ec 0c             	sub    $0xc,%esp
    2063:	68 f2 45 00 00       	push   $0x45f2
    2068:	e8 0e 19 00 00       	call   397b <mkdir>
    206d:	83 c4 10             	add    $0x10,%esp
    2070:	85 c0                	test   %eax,%eax
    2072:	0f 84 3c 03 00 00    	je     23b4 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    2078:	83 ec 0c             	sub    $0xc,%esp
    207b:	68 cb 46 00 00       	push   $0x46cb
    2080:	e8 de 18 00 00       	call   3963 <unlink>
    2085:	83 c4 10             	add    $0x10,%esp
    2088:	85 c0                	test   %eax,%eax
    208a:	0f 84 11 03 00 00    	je     23a1 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2090:	83 ec 0c             	sub    $0xc,%esp
    2093:	68 a6 46 00 00       	push   $0x46a6
    2098:	e8 c6 18 00 00       	call   3963 <unlink>
    209d:	83 c4 10             	add    $0x10,%esp
    20a0:	85 c0                	test   %eax,%eax
    20a2:	0f 84 e6 02 00 00    	je     238e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    20a8:	83 ec 0c             	sub    $0xc,%esp
    20ab:	68 91 45 00 00       	push   $0x4591
    20b0:	e8 ce 18 00 00       	call   3983 <chdir>
    20b5:	83 c4 10             	add    $0x10,%esp
    20b8:	85 c0                	test   %eax,%eax
    20ba:	0f 84 bb 02 00 00    	je     237b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    20c0:	83 ec 0c             	sub    $0xc,%esp
    20c3:	68 3d 47 00 00       	push   $0x473d
    20c8:	e8 b6 18 00 00       	call   3983 <chdir>
    20cd:	83 c4 10             	add    $0x10,%esp
    20d0:	85 c0                	test   %eax,%eax
    20d2:	0f 84 90 02 00 00    	je     2368 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    20d8:	83 ec 0c             	sub    $0xc,%esp
    20db:	68 f2 45 00 00       	push   $0x45f2
    20e0:	e8 7e 18 00 00       	call   3963 <unlink>
    20e5:	83 c4 10             	add    $0x10,%esp
    20e8:	85 c0                	test   %eax,%eax
    20ea:	0f 85 9d 00 00 00    	jne    218d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    20f0:	83 ec 0c             	sub    $0xc,%esp
    20f3:	68 91 45 00 00       	push   $0x4591
    20f8:	e8 66 18 00 00       	call   3963 <unlink>
    20fd:	83 c4 10             	add    $0x10,%esp
    2100:	85 c0                	test   %eax,%eax
    2102:	0f 85 4d 02 00 00    	jne    2355 <subdir+0x635>
  if(unlink("dd") == 0){
    2108:	83 ec 0c             	sub    $0xc,%esp
    210b:	68 58 46 00 00       	push   $0x4658
    2110:	e8 4e 18 00 00       	call   3963 <unlink>
    2115:	83 c4 10             	add    $0x10,%esp
    2118:	85 c0                	test   %eax,%eax
    211a:	0f 84 22 02 00 00    	je     2342 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2120:	83 ec 0c             	sub    $0xc,%esp
    2123:	68 6d 45 00 00       	push   $0x456d
    2128:	e8 36 18 00 00       	call   3963 <unlink>
    212d:	83 c4 10             	add    $0x10,%esp
    2130:	85 c0                	test   %eax,%eax
    2132:	0f 88 f7 01 00 00    	js     232f <subdir+0x60f>
  if(unlink("dd") < 0){
    2138:	83 ec 0c             	sub    $0xc,%esp
    213b:	68 58 46 00 00       	push   $0x4658
    2140:	e8 1e 18 00 00       	call   3963 <unlink>
    2145:	83 c4 10             	add    $0x10,%esp
    2148:	85 c0                	test   %eax,%eax
    214a:	0f 88 cc 01 00 00    	js     231c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2150:	83 ec 08             	sub    $0x8,%esp
    2153:	68 3a 48 00 00       	push   $0x483a
    2158:	6a 01                	push   $0x1
    215a:	e8 21 19 00 00       	call   3a80 <printf>
}
    215f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2162:	83 c4 10             	add    $0x10,%esp
    2165:	c9                   	leave
    2166:	c3                   	ret
    printf(1, "dd/dd/../ff wrong content\n");
    2167:	50                   	push   %eax
    2168:	50                   	push   %eax
    2169:	68 d7 45 00 00       	push   $0x45d7
    216e:	6a 01                	push   $0x1
    2170:	e8 0b 19 00 00       	call   3a80 <printf>
    exit();
    2175:	e8 99 17 00 00       	call   3913 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    217a:	50                   	push   %eax
    217b:	50                   	push   %eax
    217c:	68 32 46 00 00       	push   $0x4632
    2181:	6a 01                	push   $0x1
    2183:	e8 f8 18 00 00       	call   3a80 <printf>
    exit();
    2188:	e8 86 17 00 00       	call   3913 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    218d:	50                   	push   %eax
    218e:	50                   	push   %eax
    218f:	68 fd 45 00 00       	push   $0x45fd
    2194:	6a 01                	push   $0x1
    2196:	e8 e5 18 00 00       	call   3a80 <printf>
    exit();
    219b:	e8 73 17 00 00       	call   3913 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    21a0:	51                   	push   %ecx
    21a1:	51                   	push   %ecx
    21a2:	68 af 46 00 00       	push   $0x46af
    21a7:	6a 01                	push   $0x1
    21a9:	e8 d2 18 00 00       	call   3a80 <printf>
    exit();
    21ae:	e8 60 17 00 00       	call   3913 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    21b3:	53                   	push   %ebx
    21b4:	53                   	push   %ebx
    21b5:	68 9c 50 00 00       	push   $0x509c
    21ba:	6a 01                	push   $0x1
    21bc:	e8 bf 18 00 00       	call   3a80 <printf>
    exit();
    21c1:	e8 4d 17 00 00       	call   3913 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    21c6:	51                   	push   %ecx
    21c7:	51                   	push   %ecx
    21c8:	68 43 47 00 00       	push   $0x4743
    21cd:	6a 01                	push   $0x1
    21cf:	e8 ac 18 00 00       	call   3a80 <printf>
    exit();
    21d4:	e8 3a 17 00 00       	call   3913 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    21d9:	53                   	push   %ebx
    21da:	53                   	push   %ebx
    21db:	68 0c 51 00 00       	push   $0x510c
    21e0:	6a 01                	push   $0x1
    21e2:	e8 99 18 00 00       	call   3a80 <printf>
    exit();
    21e7:	e8 27 17 00 00       	call   3913 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    21ec:	50                   	push   %eax
    21ed:	50                   	push   %eax
    21ee:	68 be 45 00 00       	push   $0x45be
    21f3:	6a 01                	push   $0x1
    21f5:	e8 86 18 00 00       	call   3a80 <printf>
    exit();
    21fa:	e8 14 17 00 00       	call   3913 <exit>
    printf(1, "create dd/dd/ff failed\n");
    21ff:	51                   	push   %ecx
    2200:	51                   	push   %ecx
    2201:	68 97 45 00 00       	push   $0x4597
    2206:	6a 01                	push   $0x1
    2208:	e8 73 18 00 00       	call   3a80 <printf>
    exit();
    220d:	e8 01 17 00 00       	call   3913 <exit>
    printf(1, "chdir ./.. failed\n");
    2212:	50                   	push   %eax
    2213:	50                   	push   %eax
    2214:	68 60 46 00 00       	push   $0x4660
    2219:	6a 01                	push   $0x1
    221b:	e8 60 18 00 00       	call   3a80 <printf>
    exit();
    2220:	e8 ee 16 00 00       	call   3913 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2225:	52                   	push   %edx
    2226:	52                   	push   %edx
    2227:	68 54 50 00 00       	push   $0x5054
    222c:	6a 01                	push   $0x1
    222e:	e8 4d 18 00 00       	call   3a80 <printf>
    exit();
    2233:	e8 db 16 00 00       	call   3913 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2238:	50                   	push   %eax
    2239:	50                   	push   %eax
    223a:	68 e8 50 00 00       	push   $0x50e8
    223f:	6a 01                	push   $0x1
    2241:	e8 3a 18 00 00       	call   3a80 <printf>
    exit();
    2246:	e8 c8 16 00 00       	call   3913 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    224b:	50                   	push   %eax
    224c:	50                   	push   %eax
    224d:	68 c4 50 00 00       	push   $0x50c4
    2252:	6a 01                	push   $0x1
    2254:	e8 27 18 00 00       	call   3a80 <printf>
    exit();
    2259:	e8 b5 16 00 00       	call   3913 <exit>
    printf(1, "open dd wronly succeeded!\n");
    225e:	50                   	push   %eax
    225f:	50                   	push   %eax
    2260:	68 1f 47 00 00       	push   $0x471f
    2265:	6a 01                	push   $0x1
    2267:	e8 14 18 00 00       	call   3a80 <printf>
    exit();
    226c:	e8 a2 16 00 00       	call   3913 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2271:	50                   	push   %eax
    2272:	50                   	push   %eax
    2273:	68 06 47 00 00       	push   $0x4706
    2278:	6a 01                	push   $0x1
    227a:	e8 01 18 00 00       	call   3a80 <printf>
    exit();
    227f:	e8 8f 16 00 00       	call   3913 <exit>
    printf(1, "create dd succeeded!\n");
    2284:	50                   	push   %eax
    2285:	50                   	push   %eax
    2286:	68 f0 46 00 00       	push   $0x46f0
    228b:	6a 01                	push   $0x1
    228d:	e8 ee 17 00 00       	call   3a80 <printf>
    exit();
    2292:	e8 7c 16 00 00       	call   3913 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2297:	52                   	push   %edx
    2298:	52                   	push   %edx
    2299:	68 d4 46 00 00       	push   $0x46d4
    229e:	6a 01                	push   $0x1
    22a0:	e8 db 17 00 00       	call   3a80 <printf>
    exit();
    22a5:	e8 69 16 00 00       	call   3913 <exit>
    printf(1, "chdir dd failed\n");
    22aa:	50                   	push   %eax
    22ab:	50                   	push   %eax
    22ac:	68 15 46 00 00       	push   $0x4615
    22b1:	6a 01                	push   $0x1
    22b3:	e8 c8 17 00 00       	call   3a80 <printf>
    exit();
    22b8:	e8 56 16 00 00       	call   3913 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    22bd:	50                   	push   %eax
    22be:	50                   	push   %eax
    22bf:	68 78 50 00 00       	push   $0x5078
    22c4:	6a 01                	push   $0x1
    22c6:	e8 b5 17 00 00       	call   3a80 <printf>
    exit();
    22cb:	e8 43 16 00 00       	call   3913 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    22d0:	53                   	push   %ebx
    22d1:	53                   	push   %ebx
    22d2:	68 73 45 00 00       	push   $0x4573
    22d7:	6a 01                	push   $0x1
    22d9:	e8 a2 17 00 00       	call   3a80 <printf>
    exit();
    22de:	e8 30 16 00 00       	call   3913 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    22e3:	50                   	push   %eax
    22e4:	50                   	push   %eax
    22e5:	68 2c 50 00 00       	push   $0x502c
    22ea:	6a 01                	push   $0x1
    22ec:	e8 8f 17 00 00       	call   3a80 <printf>
    exit();
    22f1:	e8 1d 16 00 00       	call   3913 <exit>
    printf(1, "create dd/ff failed\n");
    22f6:	50                   	push   %eax
    22f7:	50                   	push   %eax
    22f8:	68 57 45 00 00       	push   $0x4557
    22fd:	6a 01                	push   $0x1
    22ff:	e8 7c 17 00 00       	call   3a80 <printf>
    exit();
    2304:	e8 0a 16 00 00       	call   3913 <exit>
    printf(1, "subdir mkdir dd failed\n");
    2309:	50                   	push   %eax
    230a:	50                   	push   %eax
    230b:	68 3f 45 00 00       	push   $0x453f
    2310:	6a 01                	push   $0x1
    2312:	e8 69 17 00 00       	call   3a80 <printf>
    exit();
    2317:	e8 f7 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd failed\n");
    231c:	50                   	push   %eax
    231d:	50                   	push   %eax
    231e:	68 28 48 00 00       	push   $0x4828
    2323:	6a 01                	push   $0x1
    2325:	e8 56 17 00 00       	call   3a80 <printf>
    exit();
    232a:	e8 e4 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/dd failed\n");
    232f:	52                   	push   %edx
    2330:	52                   	push   %edx
    2331:	68 13 48 00 00       	push   $0x4813
    2336:	6a 01                	push   $0x1
    2338:	e8 43 17 00 00       	call   3a80 <printf>
    exit();
    233d:	e8 d1 15 00 00       	call   3913 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2342:	51                   	push   %ecx
    2343:	51                   	push   %ecx
    2344:	68 30 51 00 00       	push   $0x5130
    2349:	6a 01                	push   $0x1
    234b:	e8 30 17 00 00       	call   3a80 <printf>
    exit();
    2350:	e8 be 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/ff failed\n");
    2355:	53                   	push   %ebx
    2356:	53                   	push   %ebx
    2357:	68 fe 47 00 00       	push   $0x47fe
    235c:	6a 01                	push   $0x1
    235e:	e8 1d 17 00 00       	call   3a80 <printf>
    exit();
    2363:	e8 ab 15 00 00       	call   3913 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2368:	50                   	push   %eax
    2369:	50                   	push   %eax
    236a:	68 e6 47 00 00       	push   $0x47e6
    236f:	6a 01                	push   $0x1
    2371:	e8 0a 17 00 00       	call   3a80 <printf>
    exit();
    2376:	e8 98 15 00 00       	call   3913 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    237b:	50                   	push   %eax
    237c:	50                   	push   %eax
    237d:	68 ce 47 00 00       	push   $0x47ce
    2382:	6a 01                	push   $0x1
    2384:	e8 f7 16 00 00       	call   3a80 <printf>
    exit();
    2389:	e8 85 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    238e:	50                   	push   %eax
    238f:	50                   	push   %eax
    2390:	68 b2 47 00 00       	push   $0x47b2
    2395:	6a 01                	push   $0x1
    2397:	e8 e4 16 00 00       	call   3a80 <printf>
    exit();
    239c:	e8 72 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    23a1:	50                   	push   %eax
    23a2:	50                   	push   %eax
    23a3:	68 96 47 00 00       	push   $0x4796
    23a8:	6a 01                	push   $0x1
    23aa:	e8 d1 16 00 00       	call   3a80 <printf>
    exit();
    23af:	e8 5f 15 00 00       	call   3913 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    23b4:	50                   	push   %eax
    23b5:	50                   	push   %eax
    23b6:	68 79 47 00 00       	push   $0x4779
    23bb:	6a 01                	push   $0x1
    23bd:	e8 be 16 00 00       	call   3a80 <printf>
    exit();
    23c2:	e8 4c 15 00 00       	call   3913 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    23c7:	52                   	push   %edx
    23c8:	52                   	push   %edx
    23c9:	68 5e 47 00 00       	push   $0x475e
    23ce:	6a 01                	push   $0x1
    23d0:	e8 ab 16 00 00       	call   3a80 <printf>
    exit();
    23d5:	e8 39 15 00 00       	call   3913 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    23da:	51                   	push   %ecx
    23db:	51                   	push   %ecx
    23dc:	68 8b 46 00 00       	push   $0x468b
    23e1:	6a 01                	push   $0x1
    23e3:	e8 98 16 00 00       	call   3a80 <printf>
    exit();
    23e8:	e8 26 15 00 00       	call   3913 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    23ed:	53                   	push   %ebx
    23ee:	53                   	push   %ebx
    23ef:	68 73 46 00 00       	push   $0x4673
    23f4:	6a 01                	push   $0x1
    23f6:	e8 85 16 00 00       	call   3a80 <printf>
    exit();
    23fb:	e8 13 15 00 00       	call   3913 <exit>

00002400 <bigwrite>:
{
    2400:	55                   	push   %ebp
    2401:	89 e5                	mov    %esp,%ebp
    2403:	56                   	push   %esi
    2404:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2405:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    240a:	83 ec 08             	sub    $0x8,%esp
    240d:	68 45 48 00 00       	push   $0x4845
    2412:	6a 01                	push   $0x1
    2414:	e8 67 16 00 00       	call   3a80 <printf>
  unlink("bigwrite");
    2419:	c7 04 24 54 48 00 00 	movl   $0x4854,(%esp)
    2420:	e8 3e 15 00 00       	call   3963 <unlink>
    2425:	83 c4 10             	add    $0x10,%esp
    2428:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    242f:	00 
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2430:	83 ec 08             	sub    $0x8,%esp
    2433:	68 02 02 00 00       	push   $0x202
    2438:	68 54 48 00 00       	push   $0x4854
    243d:	e8 11 15 00 00       	call   3953 <open>
    if(fd < 0){
    2442:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2445:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2447:	85 c0                	test   %eax,%eax
    2449:	78 7e                	js     24c9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    244b:	83 ec 04             	sub    $0x4,%esp
    244e:	53                   	push   %ebx
    244f:	68 20 86 00 00       	push   $0x8620
    2454:	50                   	push   %eax
    2455:	e8 d9 14 00 00       	call   3933 <write>
      if(cc != sz){
    245a:	83 c4 10             	add    $0x10,%esp
    245d:	39 c3                	cmp    %eax,%ebx
    245f:	75 55                	jne    24b6 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    2461:	83 ec 04             	sub    $0x4,%esp
    2464:	53                   	push   %ebx
    2465:	68 20 86 00 00       	push   $0x8620
    246a:	56                   	push   %esi
    246b:	e8 c3 14 00 00       	call   3933 <write>
      if(cc != sz){
    2470:	83 c4 10             	add    $0x10,%esp
    2473:	39 c3                	cmp    %eax,%ebx
    2475:	75 3f                	jne    24b6 <bigwrite+0xb6>
    close(fd);
    2477:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    247a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2480:	56                   	push   %esi
    2481:	e8 b5 14 00 00       	call   393b <close>
    unlink("bigwrite");
    2486:	c7 04 24 54 48 00 00 	movl   $0x4854,(%esp)
    248d:	e8 d1 14 00 00       	call   3963 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2492:	83 c4 10             	add    $0x10,%esp
    2495:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    249b:	75 93                	jne    2430 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    249d:	83 ec 08             	sub    $0x8,%esp
    24a0:	68 87 48 00 00       	push   $0x4887
    24a5:	6a 01                	push   $0x1
    24a7:	e8 d4 15 00 00       	call   3a80 <printf>
}
    24ac:	83 c4 10             	add    $0x10,%esp
    24af:	8d 65 f8             	lea    -0x8(%ebp),%esp
    24b2:	5b                   	pop    %ebx
    24b3:	5e                   	pop    %esi
    24b4:	5d                   	pop    %ebp
    24b5:	c3                   	ret
        printf(1, "write(%d) ret %d\n", sz, cc);
    24b6:	50                   	push   %eax
    24b7:	53                   	push   %ebx
    24b8:	68 75 48 00 00       	push   $0x4875
    24bd:	6a 01                	push   $0x1
    24bf:	e8 bc 15 00 00       	call   3a80 <printf>
        exit();
    24c4:	e8 4a 14 00 00       	call   3913 <exit>
      printf(1, "cannot create bigwrite\n");
    24c9:	83 ec 08             	sub    $0x8,%esp
    24cc:	68 5d 48 00 00       	push   $0x485d
    24d1:	6a 01                	push   $0x1
    24d3:	e8 a8 15 00 00       	call   3a80 <printf>
      exit();
    24d8:	e8 36 14 00 00       	call   3913 <exit>
    24dd:	8d 76 00             	lea    0x0(%esi),%esi

000024e0 <bigfile>:
{
    24e0:	55                   	push   %ebp
    24e1:	89 e5                	mov    %esp,%ebp
    24e3:	57                   	push   %edi
    24e4:	56                   	push   %esi
    24e5:	53                   	push   %ebx
    24e6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    24e9:	68 94 48 00 00       	push   $0x4894
    24ee:	6a 01                	push   $0x1
    24f0:	e8 8b 15 00 00       	call   3a80 <printf>
  unlink("bigfile");
    24f5:	c7 04 24 b0 48 00 00 	movl   $0x48b0,(%esp)
    24fc:	e8 62 14 00 00       	call   3963 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2501:	58                   	pop    %eax
    2502:	5a                   	pop    %edx
    2503:	68 02 02 00 00       	push   $0x202
    2508:	68 b0 48 00 00       	push   $0x48b0
    250d:	e8 41 14 00 00       	call   3953 <open>
  if(fd < 0){
    2512:	83 c4 10             	add    $0x10,%esp
    2515:	85 c0                	test   %eax,%eax
    2517:	0f 88 6e 01 00 00    	js     268b <bigfile+0x1ab>
    251d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    251f:	31 db                	xor    %ebx,%ebx
    2521:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2528:	00 
    2529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2530:	83 ec 04             	sub    $0x4,%esp
    2533:	68 58 02 00 00       	push   $0x258
    2538:	53                   	push   %ebx
    2539:	68 20 86 00 00       	push   $0x8620
    253e:	e8 4d 12 00 00       	call   3790 <memset>
    if(write(fd, buf, 600) != 600){
    2543:	83 c4 0c             	add    $0xc,%esp
    2546:	68 58 02 00 00       	push   $0x258
    254b:	68 20 86 00 00       	push   $0x8620
    2550:	56                   	push   %esi
    2551:	e8 dd 13 00 00       	call   3933 <write>
    2556:	83 c4 10             	add    $0x10,%esp
    2559:	3d 58 02 00 00       	cmp    $0x258,%eax
    255e:	0f 85 00 01 00 00    	jne    2664 <bigfile+0x184>
  for(i = 0; i < 20; i++){
    2564:	83 c3 01             	add    $0x1,%ebx
    2567:	83 fb 14             	cmp    $0x14,%ebx
    256a:	75 c4                	jne    2530 <bigfile+0x50>
  close(fd);
    256c:	83 ec 0c             	sub    $0xc,%esp
    256f:	56                   	push   %esi
    2570:	e8 c6 13 00 00       	call   393b <close>
  fd = open("bigfile", 0);
    2575:	5e                   	pop    %esi
    2576:	5f                   	pop    %edi
    2577:	6a 00                	push   $0x0
    2579:	68 b0 48 00 00       	push   $0x48b0
    257e:	e8 d0 13 00 00       	call   3953 <open>
  if(fd < 0){
    2583:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    2586:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2588:	85 c0                	test   %eax,%eax
    258a:	0f 88 e8 00 00 00    	js     2678 <bigfile+0x198>
  total = 0;
    2590:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    2592:	31 ff                	xor    %edi,%edi
    2594:	eb 38                	jmp    25ce <bigfile+0xee>
    2596:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    259d:	00 
    259e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    25a0:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    25a5:	0f 85 91 00 00 00    	jne    263c <bigfile+0x15c>
    if(buf[0] != i/2 || buf[299] != i/2){
    25ab:	89 fa                	mov    %edi,%edx
    25ad:	0f be 05 20 86 00 00 	movsbl 0x8620,%eax
    25b4:	d1 fa                	sar    $1,%edx
    25b6:	39 d0                	cmp    %edx,%eax
    25b8:	75 6e                	jne    2628 <bigfile+0x148>
    25ba:	0f be 15 4b 87 00 00 	movsbl 0x874b,%edx
    25c1:	39 d0                	cmp    %edx,%eax
    25c3:	75 63                	jne    2628 <bigfile+0x148>
    total += cc;
    25c5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25cb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25ce:	83 ec 04             	sub    $0x4,%esp
    25d1:	68 2c 01 00 00       	push   $0x12c
    25d6:	68 20 86 00 00       	push   $0x8620
    25db:	56                   	push   %esi
    25dc:	e8 4a 13 00 00       	call   392b <read>
    if(cc < 0){
    25e1:	83 c4 10             	add    $0x10,%esp
    25e4:	85 c0                	test   %eax,%eax
    25e6:	78 68                	js     2650 <bigfile+0x170>
    if(cc == 0)
    25e8:	75 b6                	jne    25a0 <bigfile+0xc0>
  close(fd);
    25ea:	83 ec 0c             	sub    $0xc,%esp
    25ed:	56                   	push   %esi
    25ee:	e8 48 13 00 00       	call   393b <close>
  if(total != 20*600){
    25f3:	83 c4 10             	add    $0x10,%esp
    25f6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25fc:	0f 85 9c 00 00 00    	jne    269e <bigfile+0x1be>
  unlink("bigfile");
    2602:	83 ec 0c             	sub    $0xc,%esp
    2605:	68 b0 48 00 00       	push   $0x48b0
    260a:	e8 54 13 00 00       	call   3963 <unlink>
  printf(1, "bigfile test ok\n");
    260f:	58                   	pop    %eax
    2610:	5a                   	pop    %edx
    2611:	68 3f 49 00 00       	push   $0x493f
    2616:	6a 01                	push   $0x1
    2618:	e8 63 14 00 00       	call   3a80 <printf>
}
    261d:	83 c4 10             	add    $0x10,%esp
    2620:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2623:	5b                   	pop    %ebx
    2624:	5e                   	pop    %esi
    2625:	5f                   	pop    %edi
    2626:	5d                   	pop    %ebp
    2627:	c3                   	ret
      printf(1, "read bigfile wrong data\n");
    2628:	83 ec 08             	sub    $0x8,%esp
    262b:	68 0c 49 00 00       	push   $0x490c
    2630:	6a 01                	push   $0x1
    2632:	e8 49 14 00 00       	call   3a80 <printf>
      exit();
    2637:	e8 d7 12 00 00       	call   3913 <exit>
      printf(1, "short read bigfile\n");
    263c:	83 ec 08             	sub    $0x8,%esp
    263f:	68 f8 48 00 00       	push   $0x48f8
    2644:	6a 01                	push   $0x1
    2646:	e8 35 14 00 00       	call   3a80 <printf>
      exit();
    264b:	e8 c3 12 00 00       	call   3913 <exit>
      printf(1, "read bigfile failed\n");
    2650:	83 ec 08             	sub    $0x8,%esp
    2653:	68 e3 48 00 00       	push   $0x48e3
    2658:	6a 01                	push   $0x1
    265a:	e8 21 14 00 00       	call   3a80 <printf>
      exit();
    265f:	e8 af 12 00 00       	call   3913 <exit>
      printf(1, "write bigfile failed\n");
    2664:	83 ec 08             	sub    $0x8,%esp
    2667:	68 b8 48 00 00       	push   $0x48b8
    266c:	6a 01                	push   $0x1
    266e:	e8 0d 14 00 00       	call   3a80 <printf>
      exit();
    2673:	e8 9b 12 00 00       	call   3913 <exit>
    printf(1, "cannot open bigfile\n");
    2678:	53                   	push   %ebx
    2679:	53                   	push   %ebx
    267a:	68 ce 48 00 00       	push   $0x48ce
    267f:	6a 01                	push   $0x1
    2681:	e8 fa 13 00 00       	call   3a80 <printf>
    exit();
    2686:	e8 88 12 00 00       	call   3913 <exit>
    printf(1, "cannot create bigfile");
    268b:	50                   	push   %eax
    268c:	50                   	push   %eax
    268d:	68 a2 48 00 00       	push   $0x48a2
    2692:	6a 01                	push   $0x1
    2694:	e8 e7 13 00 00       	call   3a80 <printf>
    exit();
    2699:	e8 75 12 00 00       	call   3913 <exit>
    printf(1, "read bigfile wrong total\n");
    269e:	51                   	push   %ecx
    269f:	51                   	push   %ecx
    26a0:	68 25 49 00 00       	push   $0x4925
    26a5:	6a 01                	push   $0x1
    26a7:	e8 d4 13 00 00       	call   3a80 <printf>
    exit();
    26ac:	e8 62 12 00 00       	call   3913 <exit>
    26b1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    26b8:	00 
    26b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000026c0 <fourteen>:
{
    26c0:	55                   	push   %ebp
    26c1:	89 e5                	mov    %esp,%ebp
    26c3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26c6:	68 50 49 00 00       	push   $0x4950
    26cb:	6a 01                	push   $0x1
    26cd:	e8 ae 13 00 00       	call   3a80 <printf>
  if(mkdir("12345678901234") != 0){
    26d2:	c7 04 24 8b 49 00 00 	movl   $0x498b,(%esp)
    26d9:	e8 9d 12 00 00       	call   397b <mkdir>
    26de:	83 c4 10             	add    $0x10,%esp
    26e1:	85 c0                	test   %eax,%eax
    26e3:	0f 85 97 00 00 00    	jne    2780 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    26e9:	83 ec 0c             	sub    $0xc,%esp
    26ec:	68 50 51 00 00       	push   $0x5150
    26f1:	e8 85 12 00 00       	call   397b <mkdir>
    26f6:	83 c4 10             	add    $0x10,%esp
    26f9:	85 c0                	test   %eax,%eax
    26fb:	0f 85 de 00 00 00    	jne    27df <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2701:	83 ec 08             	sub    $0x8,%esp
    2704:	68 00 02 00 00       	push   $0x200
    2709:	68 a0 51 00 00       	push   $0x51a0
    270e:	e8 40 12 00 00       	call   3953 <open>
  if(fd < 0){
    2713:	83 c4 10             	add    $0x10,%esp
    2716:	85 c0                	test   %eax,%eax
    2718:	0f 88 ae 00 00 00    	js     27cc <fourteen+0x10c>
  close(fd);
    271e:	83 ec 0c             	sub    $0xc,%esp
    2721:	50                   	push   %eax
    2722:	e8 14 12 00 00       	call   393b <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2727:	58                   	pop    %eax
    2728:	5a                   	pop    %edx
    2729:	6a 00                	push   $0x0
    272b:	68 10 52 00 00       	push   $0x5210
    2730:	e8 1e 12 00 00       	call   3953 <open>
  if(fd < 0){
    2735:	83 c4 10             	add    $0x10,%esp
    2738:	85 c0                	test   %eax,%eax
    273a:	78 7d                	js     27b9 <fourteen+0xf9>
  close(fd);
    273c:	83 ec 0c             	sub    $0xc,%esp
    273f:	50                   	push   %eax
    2740:	e8 f6 11 00 00       	call   393b <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2745:	c7 04 24 7c 49 00 00 	movl   $0x497c,(%esp)
    274c:	e8 2a 12 00 00       	call   397b <mkdir>
    2751:	83 c4 10             	add    $0x10,%esp
    2754:	85 c0                	test   %eax,%eax
    2756:	74 4e                	je     27a6 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2758:	83 ec 0c             	sub    $0xc,%esp
    275b:	68 ac 52 00 00       	push   $0x52ac
    2760:	e8 16 12 00 00       	call   397b <mkdir>
    2765:	83 c4 10             	add    $0x10,%esp
    2768:	85 c0                	test   %eax,%eax
    276a:	74 27                	je     2793 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    276c:	83 ec 08             	sub    $0x8,%esp
    276f:	68 9a 49 00 00       	push   $0x499a
    2774:	6a 01                	push   $0x1
    2776:	e8 05 13 00 00       	call   3a80 <printf>
}
    277b:	83 c4 10             	add    $0x10,%esp
    277e:	c9                   	leave
    277f:	c3                   	ret
    printf(1, "mkdir 12345678901234 failed\n");
    2780:	50                   	push   %eax
    2781:	50                   	push   %eax
    2782:	68 5f 49 00 00       	push   $0x495f
    2787:	6a 01                	push   $0x1
    2789:	e8 f2 12 00 00       	call   3a80 <printf>
    exit();
    278e:	e8 80 11 00 00       	call   3913 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2793:	50                   	push   %eax
    2794:	50                   	push   %eax
    2795:	68 cc 52 00 00       	push   $0x52cc
    279a:	6a 01                	push   $0x1
    279c:	e8 df 12 00 00       	call   3a80 <printf>
    exit();
    27a1:	e8 6d 11 00 00       	call   3913 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    27a6:	52                   	push   %edx
    27a7:	52                   	push   %edx
    27a8:	68 7c 52 00 00       	push   $0x527c
    27ad:	6a 01                	push   $0x1
    27af:	e8 cc 12 00 00       	call   3a80 <printf>
    exit();
    27b4:	e8 5a 11 00 00       	call   3913 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    27b9:	51                   	push   %ecx
    27ba:	51                   	push   %ecx
    27bb:	68 40 52 00 00       	push   $0x5240
    27c0:	6a 01                	push   $0x1
    27c2:	e8 b9 12 00 00       	call   3a80 <printf>
    exit();
    27c7:	e8 47 11 00 00       	call   3913 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27cc:	51                   	push   %ecx
    27cd:	51                   	push   %ecx
    27ce:	68 d0 51 00 00       	push   $0x51d0
    27d3:	6a 01                	push   $0x1
    27d5:	e8 a6 12 00 00       	call   3a80 <printf>
    exit();
    27da:	e8 34 11 00 00       	call   3913 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    27df:	50                   	push   %eax
    27e0:	50                   	push   %eax
    27e1:	68 70 51 00 00       	push   $0x5170
    27e6:	6a 01                	push   $0x1
    27e8:	e8 93 12 00 00       	call   3a80 <printf>
    exit();
    27ed:	e8 21 11 00 00       	call   3913 <exit>
    27f2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    27f9:	00 
    27fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00002800 <rmdot>:
{
    2800:	55                   	push   %ebp
    2801:	89 e5                	mov    %esp,%ebp
    2803:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2806:	68 a7 49 00 00       	push   $0x49a7
    280b:	6a 01                	push   $0x1
    280d:	e8 6e 12 00 00       	call   3a80 <printf>
  if(mkdir("dots") != 0){
    2812:	c7 04 24 b3 49 00 00 	movl   $0x49b3,(%esp)
    2819:	e8 5d 11 00 00       	call   397b <mkdir>
    281e:	83 c4 10             	add    $0x10,%esp
    2821:	85 c0                	test   %eax,%eax
    2823:	0f 85 b0 00 00 00    	jne    28d9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2829:	83 ec 0c             	sub    $0xc,%esp
    282c:	68 b3 49 00 00       	push   $0x49b3
    2831:	e8 4d 11 00 00       	call   3983 <chdir>
    2836:	83 c4 10             	add    $0x10,%esp
    2839:	85 c0                	test   %eax,%eax
    283b:	0f 85 1d 01 00 00    	jne    295e <rmdot+0x15e>
  if(unlink(".") == 0){
    2841:	83 ec 0c             	sub    $0xc,%esp
    2844:	68 5e 46 00 00       	push   $0x465e
    2849:	e8 15 11 00 00       	call   3963 <unlink>
    284e:	83 c4 10             	add    $0x10,%esp
    2851:	85 c0                	test   %eax,%eax
    2853:	0f 84 f2 00 00 00    	je     294b <rmdot+0x14b>
  if(unlink("..") == 0){
    2859:	83 ec 0c             	sub    $0xc,%esp
    285c:	68 5d 46 00 00       	push   $0x465d
    2861:	e8 fd 10 00 00       	call   3963 <unlink>
    2866:	83 c4 10             	add    $0x10,%esp
    2869:	85 c0                	test   %eax,%eax
    286b:	0f 84 c7 00 00 00    	je     2938 <rmdot+0x138>
  if(chdir("/") != 0){
    2871:	83 ec 0c             	sub    $0xc,%esp
    2874:	68 31 3e 00 00       	push   $0x3e31
    2879:	e8 05 11 00 00       	call   3983 <chdir>
    287e:	83 c4 10             	add    $0x10,%esp
    2881:	85 c0                	test   %eax,%eax
    2883:	0f 85 9c 00 00 00    	jne    2925 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    2889:	83 ec 0c             	sub    $0xc,%esp
    288c:	68 fb 49 00 00       	push   $0x49fb
    2891:	e8 cd 10 00 00       	call   3963 <unlink>
    2896:	83 c4 10             	add    $0x10,%esp
    2899:	85 c0                	test   %eax,%eax
    289b:	74 75                	je     2912 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    289d:	83 ec 0c             	sub    $0xc,%esp
    28a0:	68 19 4a 00 00       	push   $0x4a19
    28a5:	e8 b9 10 00 00       	call   3963 <unlink>
    28aa:	83 c4 10             	add    $0x10,%esp
    28ad:	85 c0                	test   %eax,%eax
    28af:	74 4e                	je     28ff <rmdot+0xff>
  if(unlink("dots") != 0){
    28b1:	83 ec 0c             	sub    $0xc,%esp
    28b4:	68 b3 49 00 00       	push   $0x49b3
    28b9:	e8 a5 10 00 00       	call   3963 <unlink>
    28be:	83 c4 10             	add    $0x10,%esp
    28c1:	85 c0                	test   %eax,%eax
    28c3:	75 27                	jne    28ec <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28c5:	83 ec 08             	sub    $0x8,%esp
    28c8:	68 4e 4a 00 00       	push   $0x4a4e
    28cd:	6a 01                	push   $0x1
    28cf:	e8 ac 11 00 00       	call   3a80 <printf>
}
    28d4:	83 c4 10             	add    $0x10,%esp
    28d7:	c9                   	leave
    28d8:	c3                   	ret
    printf(1, "mkdir dots failed\n");
    28d9:	50                   	push   %eax
    28da:	50                   	push   %eax
    28db:	68 b8 49 00 00       	push   $0x49b8
    28e0:	6a 01                	push   $0x1
    28e2:	e8 99 11 00 00       	call   3a80 <printf>
    exit();
    28e7:	e8 27 10 00 00       	call   3913 <exit>
    printf(1, "unlink dots failed!\n");
    28ec:	50                   	push   %eax
    28ed:	50                   	push   %eax
    28ee:	68 39 4a 00 00       	push   $0x4a39
    28f3:	6a 01                	push   $0x1
    28f5:	e8 86 11 00 00       	call   3a80 <printf>
    exit();
    28fa:	e8 14 10 00 00       	call   3913 <exit>
    printf(1, "unlink dots/.. worked!\n");
    28ff:	52                   	push   %edx
    2900:	52                   	push   %edx
    2901:	68 21 4a 00 00       	push   $0x4a21
    2906:	6a 01                	push   $0x1
    2908:	e8 73 11 00 00       	call   3a80 <printf>
    exit();
    290d:	e8 01 10 00 00       	call   3913 <exit>
    printf(1, "unlink dots/. worked!\n");
    2912:	51                   	push   %ecx
    2913:	51                   	push   %ecx
    2914:	68 02 4a 00 00       	push   $0x4a02
    2919:	6a 01                	push   $0x1
    291b:	e8 60 11 00 00       	call   3a80 <printf>
    exit();
    2920:	e8 ee 0f 00 00       	call   3913 <exit>
    printf(1, "chdir / failed\n");
    2925:	50                   	push   %eax
    2926:	50                   	push   %eax
    2927:	68 33 3e 00 00       	push   $0x3e33
    292c:	6a 01                	push   $0x1
    292e:	e8 4d 11 00 00       	call   3a80 <printf>
    exit();
    2933:	e8 db 0f 00 00       	call   3913 <exit>
    printf(1, "rm .. worked!\n");
    2938:	50                   	push   %eax
    2939:	50                   	push   %eax
    293a:	68 ec 49 00 00       	push   $0x49ec
    293f:	6a 01                	push   $0x1
    2941:	e8 3a 11 00 00       	call   3a80 <printf>
    exit();
    2946:	e8 c8 0f 00 00       	call   3913 <exit>
    printf(1, "rm . worked!\n");
    294b:	50                   	push   %eax
    294c:	50                   	push   %eax
    294d:	68 de 49 00 00       	push   $0x49de
    2952:	6a 01                	push   $0x1
    2954:	e8 27 11 00 00       	call   3a80 <printf>
    exit();
    2959:	e8 b5 0f 00 00       	call   3913 <exit>
    printf(1, "chdir dots failed\n");
    295e:	50                   	push   %eax
    295f:	50                   	push   %eax
    2960:	68 cb 49 00 00       	push   $0x49cb
    2965:	6a 01                	push   $0x1
    2967:	e8 14 11 00 00       	call   3a80 <printf>
    exit();
    296c:	e8 a2 0f 00 00       	call   3913 <exit>
    2971:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2978:	00 
    2979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002980 <dirfile>:
{
    2980:	55                   	push   %ebp
    2981:	89 e5                	mov    %esp,%ebp
    2983:	53                   	push   %ebx
    2984:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2987:	68 58 4a 00 00       	push   $0x4a58
    298c:	6a 01                	push   $0x1
    298e:	e8 ed 10 00 00       	call   3a80 <printf>
  fd = open("dirfile", O_CREATE);
    2993:	5b                   	pop    %ebx
    2994:	58                   	pop    %eax
    2995:	68 00 02 00 00       	push   $0x200
    299a:	68 65 4a 00 00       	push   $0x4a65
    299f:	e8 af 0f 00 00       	call   3953 <open>
  if(fd < 0){
    29a4:	83 c4 10             	add    $0x10,%esp
    29a7:	85 c0                	test   %eax,%eax
    29a9:	0f 88 43 01 00 00    	js     2af2 <dirfile+0x172>
  close(fd);
    29af:	83 ec 0c             	sub    $0xc,%esp
    29b2:	50                   	push   %eax
    29b3:	e8 83 0f 00 00       	call   393b <close>
  if(chdir("dirfile") == 0){
    29b8:	c7 04 24 65 4a 00 00 	movl   $0x4a65,(%esp)
    29bf:	e8 bf 0f 00 00       	call   3983 <chdir>
    29c4:	83 c4 10             	add    $0x10,%esp
    29c7:	85 c0                	test   %eax,%eax
    29c9:	0f 84 10 01 00 00    	je     2adf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29cf:	83 ec 08             	sub    $0x8,%esp
    29d2:	6a 00                	push   $0x0
    29d4:	68 9e 4a 00 00       	push   $0x4a9e
    29d9:	e8 75 0f 00 00       	call   3953 <open>
  if(fd >= 0){
    29de:	83 c4 10             	add    $0x10,%esp
    29e1:	85 c0                	test   %eax,%eax
    29e3:	0f 89 e3 00 00 00    	jns    2acc <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    29e9:	83 ec 08             	sub    $0x8,%esp
    29ec:	68 00 02 00 00       	push   $0x200
    29f1:	68 9e 4a 00 00       	push   $0x4a9e
    29f6:	e8 58 0f 00 00       	call   3953 <open>
  if(fd >= 0){
    29fb:	83 c4 10             	add    $0x10,%esp
    29fe:	85 c0                	test   %eax,%eax
    2a00:	0f 89 c6 00 00 00    	jns    2acc <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    2a06:	83 ec 0c             	sub    $0xc,%esp
    2a09:	68 9e 4a 00 00       	push   $0x4a9e
    2a0e:	e8 68 0f 00 00       	call   397b <mkdir>
    2a13:	83 c4 10             	add    $0x10,%esp
    2a16:	85 c0                	test   %eax,%eax
    2a18:	0f 84 46 01 00 00    	je     2b64 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    2a1e:	83 ec 0c             	sub    $0xc,%esp
    2a21:	68 9e 4a 00 00       	push   $0x4a9e
    2a26:	e8 38 0f 00 00       	call   3963 <unlink>
    2a2b:	83 c4 10             	add    $0x10,%esp
    2a2e:	85 c0                	test   %eax,%eax
    2a30:	0f 84 1b 01 00 00    	je     2b51 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a36:	83 ec 08             	sub    $0x8,%esp
    2a39:	68 9e 4a 00 00       	push   $0x4a9e
    2a3e:	68 02 4b 00 00       	push   $0x4b02
    2a43:	e8 2b 0f 00 00       	call   3973 <link>
    2a48:	83 c4 10             	add    $0x10,%esp
    2a4b:	85 c0                	test   %eax,%eax
    2a4d:	0f 84 eb 00 00 00    	je     2b3e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a53:	83 ec 0c             	sub    $0xc,%esp
    2a56:	68 65 4a 00 00       	push   $0x4a65
    2a5b:	e8 03 0f 00 00       	call   3963 <unlink>
    2a60:	83 c4 10             	add    $0x10,%esp
    2a63:	85 c0                	test   %eax,%eax
    2a65:	0f 85 c0 00 00 00    	jne    2b2b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a6b:	83 ec 08             	sub    $0x8,%esp
    2a6e:	6a 02                	push   $0x2
    2a70:	68 5e 46 00 00       	push   $0x465e
    2a75:	e8 d9 0e 00 00       	call   3953 <open>
  if(fd >= 0){
    2a7a:	83 c4 10             	add    $0x10,%esp
    2a7d:	85 c0                	test   %eax,%eax
    2a7f:	0f 89 93 00 00 00    	jns    2b18 <dirfile+0x198>
  fd = open(".", 0);
    2a85:	83 ec 08             	sub    $0x8,%esp
    2a88:	6a 00                	push   $0x0
    2a8a:	68 5e 46 00 00       	push   $0x465e
    2a8f:	e8 bf 0e 00 00       	call   3953 <open>
  if(write(fd, "x", 1) > 0){
    2a94:	83 c4 0c             	add    $0xc,%esp
    2a97:	6a 01                	push   $0x1
  fd = open(".", 0);
    2a99:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2a9b:	68 41 47 00 00       	push   $0x4741
    2aa0:	50                   	push   %eax
    2aa1:	e8 8d 0e 00 00       	call   3933 <write>
    2aa6:	83 c4 10             	add    $0x10,%esp
    2aa9:	85 c0                	test   %eax,%eax
    2aab:	7f 58                	jg     2b05 <dirfile+0x185>
  close(fd);
    2aad:	83 ec 0c             	sub    $0xc,%esp
    2ab0:	53                   	push   %ebx
    2ab1:	e8 85 0e 00 00       	call   393b <close>
  printf(1, "dir vs file OK\n");
    2ab6:	58                   	pop    %eax
    2ab7:	5a                   	pop    %edx
    2ab8:	68 35 4b 00 00       	push   $0x4b35
    2abd:	6a 01                	push   $0x1
    2abf:	e8 bc 0f 00 00       	call   3a80 <printf>
}
    2ac4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2ac7:	83 c4 10             	add    $0x10,%esp
    2aca:	c9                   	leave
    2acb:	c3                   	ret
    printf(1, "create dirfile/xx succeeded!\n");
    2acc:	50                   	push   %eax
    2acd:	50                   	push   %eax
    2ace:	68 a9 4a 00 00       	push   $0x4aa9
    2ad3:	6a 01                	push   $0x1
    2ad5:	e8 a6 0f 00 00       	call   3a80 <printf>
    exit();
    2ada:	e8 34 0e 00 00       	call   3913 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2adf:	52                   	push   %edx
    2ae0:	52                   	push   %edx
    2ae1:	68 84 4a 00 00       	push   $0x4a84
    2ae6:	6a 01                	push   $0x1
    2ae8:	e8 93 0f 00 00       	call   3a80 <printf>
    exit();
    2aed:	e8 21 0e 00 00       	call   3913 <exit>
    printf(1, "create dirfile failed\n");
    2af2:	51                   	push   %ecx
    2af3:	51                   	push   %ecx
    2af4:	68 6d 4a 00 00       	push   $0x4a6d
    2af9:	6a 01                	push   $0x1
    2afb:	e8 80 0f 00 00       	call   3a80 <printf>
    exit();
    2b00:	e8 0e 0e 00 00       	call   3913 <exit>
    printf(1, "write . succeeded!\n");
    2b05:	51                   	push   %ecx
    2b06:	51                   	push   %ecx
    2b07:	68 21 4b 00 00       	push   $0x4b21
    2b0c:	6a 01                	push   $0x1
    2b0e:	e8 6d 0f 00 00       	call   3a80 <printf>
    exit();
    2b13:	e8 fb 0d 00 00       	call   3913 <exit>
    printf(1, "open . for writing succeeded!\n");
    2b18:	53                   	push   %ebx
    2b19:	53                   	push   %ebx
    2b1a:	68 20 53 00 00       	push   $0x5320
    2b1f:	6a 01                	push   $0x1
    2b21:	e8 5a 0f 00 00       	call   3a80 <printf>
    exit();
    2b26:	e8 e8 0d 00 00       	call   3913 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b2b:	50                   	push   %eax
    2b2c:	50                   	push   %eax
    2b2d:	68 09 4b 00 00       	push   $0x4b09
    2b32:	6a 01                	push   $0x1
    2b34:	e8 47 0f 00 00       	call   3a80 <printf>
    exit();
    2b39:	e8 d5 0d 00 00       	call   3913 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b3e:	50                   	push   %eax
    2b3f:	50                   	push   %eax
    2b40:	68 00 53 00 00       	push   $0x5300
    2b45:	6a 01                	push   $0x1
    2b47:	e8 34 0f 00 00       	call   3a80 <printf>
    exit();
    2b4c:	e8 c2 0d 00 00       	call   3913 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b51:	50                   	push   %eax
    2b52:	50                   	push   %eax
    2b53:	68 e4 4a 00 00       	push   $0x4ae4
    2b58:	6a 01                	push   $0x1
    2b5a:	e8 21 0f 00 00       	call   3a80 <printf>
    exit();
    2b5f:	e8 af 0d 00 00       	call   3913 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b64:	50                   	push   %eax
    2b65:	50                   	push   %eax
    2b66:	68 c7 4a 00 00       	push   $0x4ac7
    2b6b:	6a 01                	push   $0x1
    2b6d:	e8 0e 0f 00 00       	call   3a80 <printf>
    exit();
    2b72:	e8 9c 0d 00 00       	call   3913 <exit>
    2b77:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2b7e:	00 
    2b7f:	90                   	nop

00002b80 <iref>:
{
    2b80:	55                   	push   %ebp
    2b81:	89 e5                	mov    %esp,%ebp
    2b83:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2b84:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2b89:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2b8c:	68 45 4b 00 00       	push   $0x4b45
    2b91:	6a 01                	push   $0x1
    2b93:	e8 e8 0e 00 00       	call   3a80 <printf>
    2b98:	83 c4 10             	add    $0x10,%esp
    2b9b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    2ba0:	83 ec 0c             	sub    $0xc,%esp
    2ba3:	68 56 4b 00 00       	push   $0x4b56
    2ba8:	e8 ce 0d 00 00       	call   397b <mkdir>
    2bad:	83 c4 10             	add    $0x10,%esp
    2bb0:	85 c0                	test   %eax,%eax
    2bb2:	0f 85 bb 00 00 00    	jne    2c73 <iref+0xf3>
    if(chdir("irefd") != 0){
    2bb8:	83 ec 0c             	sub    $0xc,%esp
    2bbb:	68 56 4b 00 00       	push   $0x4b56
    2bc0:	e8 be 0d 00 00       	call   3983 <chdir>
    2bc5:	83 c4 10             	add    $0x10,%esp
    2bc8:	85 c0                	test   %eax,%eax
    2bca:	0f 85 b7 00 00 00    	jne    2c87 <iref+0x107>
    mkdir("");
    2bd0:	83 ec 0c             	sub    $0xc,%esp
    2bd3:	68 0b 42 00 00       	push   $0x420b
    2bd8:	e8 9e 0d 00 00       	call   397b <mkdir>
    link("README", "");
    2bdd:	59                   	pop    %ecx
    2bde:	58                   	pop    %eax
    2bdf:	68 0b 42 00 00       	push   $0x420b
    2be4:	68 02 4b 00 00       	push   $0x4b02
    2be9:	e8 85 0d 00 00       	call   3973 <link>
    fd = open("", O_CREATE);
    2bee:	58                   	pop    %eax
    2bef:	5a                   	pop    %edx
    2bf0:	68 00 02 00 00       	push   $0x200
    2bf5:	68 0b 42 00 00       	push   $0x420b
    2bfa:	e8 54 0d 00 00       	call   3953 <open>
    if(fd >= 0)
    2bff:	83 c4 10             	add    $0x10,%esp
    2c02:	85 c0                	test   %eax,%eax
    2c04:	78 0c                	js     2c12 <iref+0x92>
      close(fd);
    2c06:	83 ec 0c             	sub    $0xc,%esp
    2c09:	50                   	push   %eax
    2c0a:	e8 2c 0d 00 00       	call   393b <close>
    2c0f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2c12:	83 ec 08             	sub    $0x8,%esp
    2c15:	68 00 02 00 00       	push   $0x200
    2c1a:	68 40 47 00 00       	push   $0x4740
    2c1f:	e8 2f 0d 00 00       	call   3953 <open>
    if(fd >= 0)
    2c24:	83 c4 10             	add    $0x10,%esp
    2c27:	85 c0                	test   %eax,%eax
    2c29:	78 0c                	js     2c37 <iref+0xb7>
      close(fd);
    2c2b:	83 ec 0c             	sub    $0xc,%esp
    2c2e:	50                   	push   %eax
    2c2f:	e8 07 0d 00 00       	call   393b <close>
    2c34:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c37:	83 ec 0c             	sub    $0xc,%esp
    2c3a:	68 40 47 00 00       	push   $0x4740
    2c3f:	e8 1f 0d 00 00       	call   3963 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c44:	83 c4 10             	add    $0x10,%esp
    2c47:	83 eb 01             	sub    $0x1,%ebx
    2c4a:	0f 85 50 ff ff ff    	jne    2ba0 <iref+0x20>
  chdir("/");
    2c50:	83 ec 0c             	sub    $0xc,%esp
    2c53:	68 31 3e 00 00       	push   $0x3e31
    2c58:	e8 26 0d 00 00       	call   3983 <chdir>
  printf(1, "empty file name OK\n");
    2c5d:	58                   	pop    %eax
    2c5e:	5a                   	pop    %edx
    2c5f:	68 84 4b 00 00       	push   $0x4b84
    2c64:	6a 01                	push   $0x1
    2c66:	e8 15 0e 00 00       	call   3a80 <printf>
}
    2c6b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c6e:	83 c4 10             	add    $0x10,%esp
    2c71:	c9                   	leave
    2c72:	c3                   	ret
      printf(1, "mkdir irefd failed\n");
    2c73:	83 ec 08             	sub    $0x8,%esp
    2c76:	68 5c 4b 00 00       	push   $0x4b5c
    2c7b:	6a 01                	push   $0x1
    2c7d:	e8 fe 0d 00 00       	call   3a80 <printf>
      exit();
    2c82:	e8 8c 0c 00 00       	call   3913 <exit>
      printf(1, "chdir irefd failed\n");
    2c87:	83 ec 08             	sub    $0x8,%esp
    2c8a:	68 70 4b 00 00       	push   $0x4b70
    2c8f:	6a 01                	push   $0x1
    2c91:	e8 ea 0d 00 00       	call   3a80 <printf>
      exit();
    2c96:	e8 78 0c 00 00       	call   3913 <exit>
    2c9b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002ca0 <forktest>:
{
    2ca0:	55                   	push   %ebp
    2ca1:	89 e5                	mov    %esp,%ebp
    2ca3:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2ca4:	31 db                	xor    %ebx,%ebx
{
    2ca6:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2ca9:	68 98 4b 00 00       	push   $0x4b98
    2cae:	6a 01                	push   $0x1
    2cb0:	e8 cb 0d 00 00       	call   3a80 <printf>
    2cb5:	83 c4 10             	add    $0x10,%esp
    2cb8:	eb 13                	jmp    2ccd <forktest+0x2d>
    2cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2cc0:	74 4a                	je     2d0c <forktest+0x6c>
  for(n=0; n<1000; n++){
    2cc2:	83 c3 01             	add    $0x1,%ebx
    2cc5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2ccb:	74 6b                	je     2d38 <forktest+0x98>
    pid = fork();
    2ccd:	e8 39 0c 00 00       	call   390b <fork>
    if(pid < 0)
    2cd2:	85 c0                	test   %eax,%eax
    2cd4:	79 ea                	jns    2cc0 <forktest+0x20>
  for(; n > 0; n--){
    2cd6:	85 db                	test   %ebx,%ebx
    2cd8:	74 14                	je     2cee <forktest+0x4e>
    2cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2ce0:	e8 36 0c 00 00       	call   391b <wait>
    2ce5:	85 c0                	test   %eax,%eax
    2ce7:	78 28                	js     2d11 <forktest+0x71>
  for(; n > 0; n--){
    2ce9:	83 eb 01             	sub    $0x1,%ebx
    2cec:	75 f2                	jne    2ce0 <forktest+0x40>
  if(wait() != -1){
    2cee:	e8 28 0c 00 00       	call   391b <wait>
    2cf3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2cf6:	75 2d                	jne    2d25 <forktest+0x85>
  printf(1, "fork test OK\n");
    2cf8:	83 ec 08             	sub    $0x8,%esp
    2cfb:	68 ca 4b 00 00       	push   $0x4bca
    2d00:	6a 01                	push   $0x1
    2d02:	e8 79 0d 00 00       	call   3a80 <printf>
}
    2d07:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2d0a:	c9                   	leave
    2d0b:	c3                   	ret
      exit();
    2d0c:	e8 02 0c 00 00       	call   3913 <exit>
      printf(1, "wait stopped early\n");
    2d11:	83 ec 08             	sub    $0x8,%esp
    2d14:	68 a3 4b 00 00       	push   $0x4ba3
    2d19:	6a 01                	push   $0x1
    2d1b:	e8 60 0d 00 00       	call   3a80 <printf>
      exit();
    2d20:	e8 ee 0b 00 00       	call   3913 <exit>
    printf(1, "wait got too many\n");
    2d25:	52                   	push   %edx
    2d26:	52                   	push   %edx
    2d27:	68 b7 4b 00 00       	push   $0x4bb7
    2d2c:	6a 01                	push   $0x1
    2d2e:	e8 4d 0d 00 00       	call   3a80 <printf>
    exit();
    2d33:	e8 db 0b 00 00       	call   3913 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    2d38:	50                   	push   %eax
    2d39:	50                   	push   %eax
    2d3a:	68 40 53 00 00       	push   $0x5340
    2d3f:	6a 01                	push   $0x1
    2d41:	e8 3a 0d 00 00       	call   3a80 <printf>
    exit();
    2d46:	e8 c8 0b 00 00       	call   3913 <exit>
    2d4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002d50 <sbrktest>:
{
    2d50:	55                   	push   %ebp
    2d51:	89 e5                	mov    %esp,%ebp
    2d53:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    2d54:	31 ff                	xor    %edi,%edi
{
    2d56:	56                   	push   %esi
    2d57:	53                   	push   %ebx
    2d58:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2d5b:	68 d8 4b 00 00       	push   $0x4bd8
    2d60:	ff 35 d8 5e 00 00    	push   0x5ed8
    2d66:	e8 15 0d 00 00       	call   3a80 <printf>
  oldbrk = sbrk(0);
    2d6b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d72:	e8 24 0c 00 00       	call   399b <sbrk>
    2d77:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    2d7a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d81:	e8 15 0c 00 00       	call   399b <sbrk>
    2d86:	83 c4 10             	add    $0x10,%esp
    2d89:	89 c3                	mov    %eax,%ebx
  for(i = 0; i < 5000; i++){
    2d8b:	eb 05                	jmp    2d92 <sbrktest+0x42>
    2d8d:	8d 76 00             	lea    0x0(%esi),%esi
    2d90:	89 c3                	mov    %eax,%ebx
    b = sbrk(1);
    2d92:	83 ec 0c             	sub    $0xc,%esp
    2d95:	6a 01                	push   $0x1
    2d97:	e8 ff 0b 00 00       	call   399b <sbrk>
    if(b != a){
    2d9c:	83 c4 10             	add    $0x10,%esp
    2d9f:	39 d8                	cmp    %ebx,%eax
    2da1:	0f 85 aa 02 00 00    	jne    3051 <sbrktest+0x301>
  for(i = 0; i < 5000; i++){
    2da7:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2daa:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    2dad:	8d 43 01             	lea    0x1(%ebx),%eax
  for(i = 0; i < 5000; i++){
    2db0:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2db6:	75 d8                	jne    2d90 <sbrktest+0x40>
  pid = fork();
    2db8:	e8 4e 0b 00 00       	call   390b <fork>
    2dbd:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2dbf:	85 c0                	test   %eax,%eax
    2dc1:	0f 88 10 03 00 00    	js     30d7 <sbrktest+0x387>
  c = sbrk(1);
    2dc7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2dca:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    2dcd:	6a 01                	push   $0x1
    2dcf:	e8 c7 0b 00 00       	call   399b <sbrk>
  c = sbrk(1);
    2dd4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ddb:	e8 bb 0b 00 00       	call   399b <sbrk>
  if(c != a + 1){
    2de0:	83 c4 10             	add    $0x10,%esp
    2de3:	39 c3                	cmp    %eax,%ebx
    2de5:	0f 85 49 03 00 00    	jne    3134 <sbrktest+0x3e4>
  if(pid == 0)
    2deb:	85 ff                	test   %edi,%edi
    2ded:	0f 84 3c 03 00 00    	je     312f <sbrktest+0x3df>
  wait();
    2df3:	e8 23 0b 00 00       	call   391b <wait>
  a = sbrk(0);
    2df8:	83 ec 0c             	sub    $0xc,%esp
    2dfb:	6a 00                	push   $0x0
    2dfd:	e8 99 0b 00 00       	call   399b <sbrk>
    2e02:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
    2e04:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2e09:	29 d8                	sub    %ebx,%eax
  p = sbrk(amt);
    2e0b:	89 04 24             	mov    %eax,(%esp)
    2e0e:	e8 88 0b 00 00       	call   399b <sbrk>
  if (p != a) {
    2e13:	83 c4 10             	add    $0x10,%esp
    2e16:	39 c3                	cmp    %eax,%ebx
    2e18:	0f 85 a2 02 00 00    	jne    30c0 <sbrktest+0x370>
  a = sbrk(0);
    2e1e:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    2e21:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    2e28:	6a 00                	push   $0x0
    2e2a:	e8 6c 0b 00 00       	call   399b <sbrk>
  c = sbrk(-4096);
    2e2f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e36:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    2e38:	e8 5e 0b 00 00       	call   399b <sbrk>
  if(c == (char*)0xffffffff){
    2e3d:	83 c4 10             	add    $0x10,%esp
    2e40:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e43:	0f 84 30 03 00 00    	je     3179 <sbrktest+0x429>
  c = sbrk(0);
    2e49:	83 ec 0c             	sub    $0xc,%esp
    2e4c:	6a 00                	push   $0x0
    2e4e:	e8 48 0b 00 00       	call   399b <sbrk>
  if(c != a - 4096){
    2e53:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2e59:	83 c4 10             	add    $0x10,%esp
    2e5c:	39 d0                	cmp    %edx,%eax
    2e5e:	0f 85 fe 02 00 00    	jne    3162 <sbrktest+0x412>
  a = sbrk(0);
    2e64:	83 ec 0c             	sub    $0xc,%esp
    2e67:	6a 00                	push   $0x0
    2e69:	e8 2d 0b 00 00       	call   399b <sbrk>
  c = sbrk(4096);
    2e6e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    2e75:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    2e77:	e8 1f 0b 00 00       	call   399b <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2e7c:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    2e7f:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2e81:	39 c3                	cmp    %eax,%ebx
    2e83:	0f 85 c2 02 00 00    	jne    314b <sbrktest+0x3fb>
    2e89:	83 ec 0c             	sub    $0xc,%esp
    2e8c:	6a 00                	push   $0x0
    2e8e:	e8 08 0b 00 00       	call   399b <sbrk>
    2e93:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2e99:	83 c4 10             	add    $0x10,%esp
    2e9c:	39 c2                	cmp    %eax,%edx
    2e9e:	0f 85 a7 02 00 00    	jne    314b <sbrktest+0x3fb>
  if(*lastaddr == 99){
    2ea4:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2eab:	0f 84 3d 02 00 00    	je     30ee <sbrktest+0x39e>
  a = sbrk(0);
    2eb1:	83 ec 0c             	sub    $0xc,%esp
    2eb4:	6a 00                	push   $0x0
    2eb6:	e8 e0 0a 00 00       	call   399b <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2ebb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2ec2:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    2ec4:	e8 d2 0a 00 00       	call   399b <sbrk>
    2ec9:	89 c2                	mov    %eax,%edx
    2ecb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    2ece:	29 d0                	sub    %edx,%eax
    2ed0:	89 04 24             	mov    %eax,(%esp)
    2ed3:	e8 c3 0a 00 00       	call   399b <sbrk>
  if(c != a){
    2ed8:	83 c4 10             	add    $0x10,%esp
    2edb:	39 c3                	cmp    %eax,%ebx
    2edd:	0f 85 c6 01 00 00    	jne    30a9 <sbrktest+0x359>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ee3:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2ee8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2eef:	00 
    ppid = getpid();
    2ef0:	e8 9e 0a 00 00       	call   3993 <getpid>
    2ef5:	89 c7                	mov    %eax,%edi
    pid = fork();
    2ef7:	e8 0f 0a 00 00       	call   390b <fork>
    if(pid < 0){
    2efc:	85 c0                	test   %eax,%eax
    2efe:	0f 88 6b 01 00 00    	js     306f <sbrktest+0x31f>
    if(pid == 0){
    2f04:	0f 84 7d 01 00 00    	je     3087 <sbrktest+0x337>
    wait();
    2f0a:	e8 0c 0a 00 00       	call   391b <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2f0f:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2f15:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    2f1b:	75 d3                	jne    2ef0 <sbrktest+0x1a0>
  if(pipe(fds) != 0){
    2f1d:	83 ec 0c             	sub    $0xc,%esp
    2f20:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f23:	50                   	push   %eax
    2f24:	e8 fa 09 00 00       	call   3923 <pipe>
    2f29:	83 c4 10             	add    $0x10,%esp
    2f2c:	85 c0                	test   %eax,%eax
    2f2e:	0f 85 e8 01 00 00    	jne    311c <sbrktest+0x3cc>
    2f34:	8d 5d c0             	lea    -0x40(%ebp),%ebx
      read(fds[0], &scratch, 1);
    2f37:	8d 7d b7             	lea    -0x49(%ebp),%edi
  if(pipe(fds) != 0){
    2f3a:	89 de                	mov    %ebx,%esi
    2f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pids[i] = fork()) == 0){
    2f40:	e8 c6 09 00 00       	call   390b <fork>
    2f45:	89 06                	mov    %eax,(%esi)
    2f47:	85 c0                	test   %eax,%eax
    2f49:	0f 84 9c 00 00 00    	je     2feb <sbrktest+0x29b>
    if(pids[i] != -1)
    2f4f:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f52:	74 11                	je     2f65 <sbrktest+0x215>
      read(fds[0], &scratch, 1);
    2f54:	83 ec 04             	sub    $0x4,%esp
    2f57:	6a 01                	push   $0x1
    2f59:	57                   	push   %edi
    2f5a:	ff 75 b8             	push   -0x48(%ebp)
    2f5d:	e8 c9 09 00 00       	call   392b <read>
    2f62:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f65:	83 c6 04             	add    $0x4,%esi
    2f68:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f6b:	39 c6                	cmp    %eax,%esi
    2f6d:	75 d1                	jne    2f40 <sbrktest+0x1f0>
  c = sbrk(4096);
    2f6f:	83 ec 0c             	sub    $0xc,%esp
    2f72:	68 00 10 00 00       	push   $0x1000
    2f77:	e8 1f 0a 00 00       	call   399b <sbrk>
    2f7c:	83 c4 10             	add    $0x10,%esp
    2f7f:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f81:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2f88:	00 
    2f89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pids[i] == -1)
    2f90:	8b 03                	mov    (%ebx),%eax
    2f92:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f95:	74 11                	je     2fa8 <sbrktest+0x258>
    kill(pids[i]);
    2f97:	83 ec 0c             	sub    $0xc,%esp
    2f9a:	50                   	push   %eax
    2f9b:	e8 a3 09 00 00       	call   3943 <kill>
    wait();
    2fa0:	e8 76 09 00 00       	call   391b <wait>
    2fa5:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2fa8:	83 c3 04             	add    $0x4,%ebx
    2fab:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2fae:	39 c3                	cmp    %eax,%ebx
    2fb0:	75 de                	jne    2f90 <sbrktest+0x240>
  if(c == (char*)0xffffffff){
    2fb2:	83 ff ff             	cmp    $0xffffffff,%edi
    2fb5:	0f 84 4a 01 00 00    	je     3105 <sbrktest+0x3b5>
  if(sbrk(0) > oldbrk)
    2fbb:	83 ec 0c             	sub    $0xc,%esp
    2fbe:	6a 00                	push   $0x0
    2fc0:	e8 d6 09 00 00       	call   399b <sbrk>
    2fc5:	83 c4 10             	add    $0x10,%esp
    2fc8:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    2fcb:	72 65                	jb     3032 <sbrktest+0x2e2>
  printf(stdout, "sbrk test OK\n");
    2fcd:	83 ec 08             	sub    $0x8,%esp
    2fd0:	68 80 4c 00 00       	push   $0x4c80
    2fd5:	ff 35 d8 5e 00 00    	push   0x5ed8
    2fdb:	e8 a0 0a 00 00       	call   3a80 <printf>
}
    2fe0:	83 c4 10             	add    $0x10,%esp
    2fe3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fe6:	5b                   	pop    %ebx
    2fe7:	5e                   	pop    %esi
    2fe8:	5f                   	pop    %edi
    2fe9:	5d                   	pop    %ebp
    2fea:	c3                   	ret
      sbrk(BIG - (uint)sbrk(0));
    2feb:	83 ec 0c             	sub    $0xc,%esp
    2fee:	6a 00                	push   $0x0
    2ff0:	e8 a6 09 00 00       	call   399b <sbrk>
    2ff5:	89 c2                	mov    %eax,%edx
    2ff7:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2ffc:	29 d0                	sub    %edx,%eax
    2ffe:	89 04 24             	mov    %eax,(%esp)
    3001:	e8 95 09 00 00       	call   399b <sbrk>
      write(fds[1], "x", 1);
    3006:	83 c4 0c             	add    $0xc,%esp
    3009:	6a 01                	push   $0x1
    300b:	68 41 47 00 00       	push   $0x4741
    3010:	ff 75 bc             	push   -0x44(%ebp)
    3013:	e8 1b 09 00 00       	call   3933 <write>
    3018:	83 c4 10             	add    $0x10,%esp
    301b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3020:	83 ec 0c             	sub    $0xc,%esp
    3023:	68 e8 03 00 00       	push   $0x3e8
    3028:	e8 76 09 00 00       	call   39a3 <sleep>
    302d:	83 c4 10             	add    $0x10,%esp
    3030:	eb ee                	jmp    3020 <sbrktest+0x2d0>
    sbrk(-(sbrk(0) - oldbrk));
    3032:	83 ec 0c             	sub    $0xc,%esp
    3035:	6a 00                	push   $0x0
    3037:	e8 5f 09 00 00       	call   399b <sbrk>
    303c:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    303f:	29 c6                	sub    %eax,%esi
    3041:	89 34 24             	mov    %esi,(%esp)
    3044:	e8 52 09 00 00       	call   399b <sbrk>
    3049:	83 c4 10             	add    $0x10,%esp
    304c:	e9 7c ff ff ff       	jmp    2fcd <sbrktest+0x27d>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3051:	83 ec 0c             	sub    $0xc,%esp
    3054:	50                   	push   %eax
    3055:	53                   	push   %ebx
    3056:	57                   	push   %edi
    3057:	68 e3 4b 00 00       	push   $0x4be3
    305c:	ff 35 d8 5e 00 00    	push   0x5ed8
    3062:	e8 19 0a 00 00       	call   3a80 <printf>
      exit();
    3067:	83 c4 20             	add    $0x20,%esp
    306a:	e8 a4 08 00 00       	call   3913 <exit>
      printf(stdout, "fork failed\n");
    306f:	83 ec 08             	sub    $0x8,%esp
    3072:	68 29 4d 00 00       	push   $0x4d29
    3077:	ff 35 d8 5e 00 00    	push   0x5ed8
    307d:	e8 fe 09 00 00       	call   3a80 <printf>
      exit();
    3082:	e8 8c 08 00 00       	call   3913 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3087:	0f be 03             	movsbl (%ebx),%eax
    308a:	50                   	push   %eax
    308b:	53                   	push   %ebx
    308c:	68 4c 4c 00 00       	push   $0x4c4c
    3091:	ff 35 d8 5e 00 00    	push   0x5ed8
    3097:	e8 e4 09 00 00       	call   3a80 <printf>
      kill(ppid);
    309c:	89 3c 24             	mov    %edi,(%esp)
    309f:	e8 9f 08 00 00       	call   3943 <kill>
      exit();
    30a4:	e8 6a 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    30a9:	50                   	push   %eax
    30aa:	53                   	push   %ebx
    30ab:	68 34 54 00 00       	push   $0x5434
    30b0:	ff 35 d8 5e 00 00    	push   0x5ed8
    30b6:	e8 c5 09 00 00       	call   3a80 <printf>
    exit();
    30bb:	e8 53 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    30c0:	56                   	push   %esi
    30c1:	56                   	push   %esi
    30c2:	68 64 53 00 00       	push   $0x5364
    30c7:	ff 35 d8 5e 00 00    	push   0x5ed8
    30cd:	e8 ae 09 00 00       	call   3a80 <printf>
    exit();
    30d2:	e8 3c 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk test fork failed\n");
    30d7:	50                   	push   %eax
    30d8:	50                   	push   %eax
    30d9:	68 fe 4b 00 00       	push   $0x4bfe
    30de:	ff 35 d8 5e 00 00    	push   0x5ed8
    30e4:	e8 97 09 00 00       	call   3a80 <printf>
    exit();
    30e9:	e8 25 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    30ee:	51                   	push   %ecx
    30ef:	51                   	push   %ecx
    30f0:	68 04 54 00 00       	push   $0x5404
    30f5:	ff 35 d8 5e 00 00    	push   0x5ed8
    30fb:	e8 80 09 00 00       	call   3a80 <printf>
    exit();
    3100:	e8 0e 08 00 00       	call   3913 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    3105:	50                   	push   %eax
    3106:	50                   	push   %eax
    3107:	68 65 4c 00 00       	push   $0x4c65
    310c:	ff 35 d8 5e 00 00    	push   0x5ed8
    3112:	e8 69 09 00 00       	call   3a80 <printf>
    exit();
    3117:	e8 f7 07 00 00       	call   3913 <exit>
    printf(1, "pipe() failed\n");
    311c:	52                   	push   %edx
    311d:	52                   	push   %edx
    311e:	68 21 41 00 00       	push   $0x4121
    3123:	6a 01                	push   $0x1
    3125:	e8 56 09 00 00       	call   3a80 <printf>
    exit();
    312a:	e8 e4 07 00 00       	call   3913 <exit>
    exit();
    312f:	e8 df 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3134:	57                   	push   %edi
    3135:	57                   	push   %edi
    3136:	68 15 4c 00 00       	push   $0x4c15
    313b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3141:	e8 3a 09 00 00       	call   3a80 <printf>
    exit();
    3146:	e8 c8 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    314b:	57                   	push   %edi
    314c:	53                   	push   %ebx
    314d:	68 dc 53 00 00       	push   $0x53dc
    3152:	ff 35 d8 5e 00 00    	push   0x5ed8
    3158:	e8 23 09 00 00       	call   3a80 <printf>
    exit();
    315d:	e8 b1 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3162:	50                   	push   %eax
    3163:	53                   	push   %ebx
    3164:	68 a4 53 00 00       	push   $0x53a4
    3169:	ff 35 d8 5e 00 00    	push   0x5ed8
    316f:	e8 0c 09 00 00       	call   3a80 <printf>
    exit();
    3174:	e8 9a 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3179:	53                   	push   %ebx
    317a:	53                   	push   %ebx
    317b:	68 31 4c 00 00       	push   $0x4c31
    3180:	ff 35 d8 5e 00 00    	push   0x5ed8
    3186:	e8 f5 08 00 00       	call   3a80 <printf>
    exit();
    318b:	e8 83 07 00 00       	call   3913 <exit>

00003190 <validateint>:
}
    3190:	c3                   	ret
    3191:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3198:	00 
    3199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000031a0 <validatetest>:
{
    31a0:	55                   	push   %ebp
    31a1:	89 e5                	mov    %esp,%ebp
    31a3:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    31a4:	31 f6                	xor    %esi,%esi
{
    31a6:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    31a7:	83 ec 08             	sub    $0x8,%esp
    31aa:	68 8e 4c 00 00       	push   $0x4c8e
    31af:	ff 35 d8 5e 00 00    	push   0x5ed8
    31b5:	e8 c6 08 00 00       	call   3a80 <printf>
    31ba:	83 c4 10             	add    $0x10,%esp
    31bd:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    31c0:	e8 46 07 00 00       	call   390b <fork>
    31c5:	89 c3                	mov    %eax,%ebx
    31c7:	85 c0                	test   %eax,%eax
    31c9:	74 63                	je     322e <validatetest+0x8e>
    sleep(0);
    31cb:	83 ec 0c             	sub    $0xc,%esp
    31ce:	6a 00                	push   $0x0
    31d0:	e8 ce 07 00 00       	call   39a3 <sleep>
    sleep(0);
    31d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31dc:	e8 c2 07 00 00       	call   39a3 <sleep>
    kill(pid);
    31e1:	89 1c 24             	mov    %ebx,(%esp)
    31e4:	e8 5a 07 00 00       	call   3943 <kill>
    wait();
    31e9:	e8 2d 07 00 00       	call   391b <wait>
    if(link("nosuchfile", (char*)p) != -1){
    31ee:	58                   	pop    %eax
    31ef:	5a                   	pop    %edx
    31f0:	56                   	push   %esi
    31f1:	68 9d 4c 00 00       	push   $0x4c9d
    31f6:	e8 78 07 00 00       	call   3973 <link>
    31fb:	83 c4 10             	add    $0x10,%esp
    31fe:	83 f8 ff             	cmp    $0xffffffff,%eax
    3201:	75 30                	jne    3233 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    3203:	81 c6 00 10 00 00    	add    $0x1000,%esi
    3209:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    320f:	75 af                	jne    31c0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    3211:	83 ec 08             	sub    $0x8,%esp
    3214:	68 c1 4c 00 00       	push   $0x4cc1
    3219:	ff 35 d8 5e 00 00    	push   0x5ed8
    321f:	e8 5c 08 00 00       	call   3a80 <printf>
}
    3224:	83 c4 10             	add    $0x10,%esp
    3227:	8d 65 f8             	lea    -0x8(%ebp),%esp
    322a:	5b                   	pop    %ebx
    322b:	5e                   	pop    %esi
    322c:	5d                   	pop    %ebp
    322d:	c3                   	ret
      exit();
    322e:	e8 e0 06 00 00       	call   3913 <exit>
      printf(stdout, "link should not succeed\n");
    3233:	83 ec 08             	sub    $0x8,%esp
    3236:	68 a8 4c 00 00       	push   $0x4ca8
    323b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3241:	e8 3a 08 00 00       	call   3a80 <printf>
      exit();
    3246:	e8 c8 06 00 00       	call   3913 <exit>
    324b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00003250 <bsstest>:
{
    3250:	55                   	push   %ebp
    3251:	89 e5                	mov    %esp,%ebp
    3253:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3256:	68 ce 4c 00 00       	push   $0x4cce
    325b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3261:	e8 1a 08 00 00       	call   3a80 <printf>
    3266:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3269:	31 c0                	xor    %eax,%eax
    326b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3272:	00 
    3273:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    327a:	00 
    327b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3280:	80 b8 00 5f 00 00 00 	cmpb   $0x0,0x5f00(%eax)
    3287:	75 22                	jne    32ab <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3289:	83 c0 01             	add    $0x1,%eax
    328c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3291:	75 ed                	jne    3280 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3293:	83 ec 08             	sub    $0x8,%esp
    3296:	68 e9 4c 00 00       	push   $0x4ce9
    329b:	ff 35 d8 5e 00 00    	push   0x5ed8
    32a1:	e8 da 07 00 00       	call   3a80 <printf>
}
    32a6:	83 c4 10             	add    $0x10,%esp
    32a9:	c9                   	leave
    32aa:	c3                   	ret
      printf(stdout, "bss test failed\n");
    32ab:	83 ec 08             	sub    $0x8,%esp
    32ae:	68 d8 4c 00 00       	push   $0x4cd8
    32b3:	ff 35 d8 5e 00 00    	push   0x5ed8
    32b9:	e8 c2 07 00 00       	call   3a80 <printf>
      exit();
    32be:	e8 50 06 00 00       	call   3913 <exit>
    32c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    32ca:	00 
    32cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000032d0 <bigargtest>:
{
    32d0:	55                   	push   %ebp
    32d1:	89 e5                	mov    %esp,%ebp
    32d3:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    32d6:	68 f6 4c 00 00       	push   $0x4cf6
    32db:	e8 83 06 00 00       	call   3963 <unlink>
  pid = fork();
    32e0:	e8 26 06 00 00       	call   390b <fork>
  if(pid == 0){
    32e5:	83 c4 10             	add    $0x10,%esp
    32e8:	85 c0                	test   %eax,%eax
    32ea:	74 3f                	je     332b <bigargtest+0x5b>
  } else if(pid < 0){
    32ec:	0f 88 d9 00 00 00    	js     33cb <bigargtest+0xfb>
  wait();
    32f2:	e8 24 06 00 00       	call   391b <wait>
  fd = open("bigarg-ok", 0);
    32f7:	83 ec 08             	sub    $0x8,%esp
    32fa:	6a 00                	push   $0x0
    32fc:	68 f6 4c 00 00       	push   $0x4cf6
    3301:	e8 4d 06 00 00       	call   3953 <open>
  if(fd < 0){
    3306:	83 c4 10             	add    $0x10,%esp
    3309:	85 c0                	test   %eax,%eax
    330b:	0f 88 a3 00 00 00    	js     33b4 <bigargtest+0xe4>
  close(fd);
    3311:	83 ec 0c             	sub    $0xc,%esp
    3314:	50                   	push   %eax
    3315:	e8 21 06 00 00       	call   393b <close>
  unlink("bigarg-ok");
    331a:	c7 04 24 f6 4c 00 00 	movl   $0x4cf6,(%esp)
    3321:	e8 3d 06 00 00       	call   3963 <unlink>
}
    3326:	83 c4 10             	add    $0x10,%esp
    3329:	c9                   	leave
    332a:	c3                   	ret
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    332b:	c7 04 85 20 a6 00 00 	movl   $0x5458,0xa620(,%eax,4)
    3332:	58 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3336:	b8 01 00 00 00       	mov    $0x1,%eax
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    333b:	c7 04 85 20 a6 00 00 	movl   $0x5458,0xa620(,%eax,4)
    3342:	58 54 00 00 
    3346:	c7 04 85 24 a6 00 00 	movl   $0x5458,0xa624(,%eax,4)
    334d:	58 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3351:	83 c0 02             	add    $0x2,%eax
    3354:	83 f8 1f             	cmp    $0x1f,%eax
    3357:	75 e2                	jne    333b <bigargtest+0x6b>
    printf(stdout, "bigarg test\n");
    3359:	50                   	push   %eax
    args[MAXARG-1] = 0;
    335a:	31 c9                	xor    %ecx,%ecx
    printf(stdout, "bigarg test\n");
    335c:	50                   	push   %eax
    335d:	68 00 4d 00 00       	push   $0x4d00
    3362:	ff 35 d8 5e 00 00    	push   0x5ed8
    args[MAXARG-1] = 0;
    3368:	89 0d 9c a6 00 00    	mov    %ecx,0xa69c
    printf(stdout, "bigarg test\n");
    336e:	e8 0d 07 00 00       	call   3a80 <printf>
    exec("echo", args);
    3373:	58                   	pop    %eax
    3374:	5a                   	pop    %edx
    3375:	68 20 a6 00 00       	push   $0xa620
    337a:	68 cd 3e 00 00       	push   $0x3ecd
    337f:	e8 c7 05 00 00       	call   394b <exec>
    printf(stdout, "bigarg test ok\n");
    3384:	59                   	pop    %ecx
    3385:	58                   	pop    %eax
    3386:	68 0d 4d 00 00       	push   $0x4d0d
    338b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3391:	e8 ea 06 00 00       	call   3a80 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3396:	58                   	pop    %eax
    3397:	5a                   	pop    %edx
    3398:	68 00 02 00 00       	push   $0x200
    339d:	68 f6 4c 00 00       	push   $0x4cf6
    33a2:	e8 ac 05 00 00       	call   3953 <open>
    close(fd);
    33a7:	89 04 24             	mov    %eax,(%esp)
    33aa:	e8 8c 05 00 00       	call   393b <close>
    exit();
    33af:	e8 5f 05 00 00       	call   3913 <exit>
    printf(stdout, "bigarg test failed!\n");
    33b4:	50                   	push   %eax
    33b5:	50                   	push   %eax
    33b6:	68 36 4d 00 00       	push   $0x4d36
    33bb:	ff 35 d8 5e 00 00    	push   0x5ed8
    33c1:	e8 ba 06 00 00       	call   3a80 <printf>
    exit();
    33c6:	e8 48 05 00 00       	call   3913 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    33cb:	52                   	push   %edx
    33cc:	52                   	push   %edx
    33cd:	68 1d 4d 00 00       	push   $0x4d1d
    33d2:	ff 35 d8 5e 00 00    	push   0x5ed8
    33d8:	e8 a3 06 00 00       	call   3a80 <printf>
    exit();
    33dd:	e8 31 05 00 00       	call   3913 <exit>
    33e2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    33e9:	00 
    33ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000033f0 <fsfull>:
{
    33f0:	55                   	push   %ebp
    33f1:	89 e5                	mov    %esp,%ebp
    33f3:	57                   	push   %edi
    33f4:	56                   	push   %esi
    33f5:	8d 7d a8             	lea    -0x58(%ebp),%edi
    33f8:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    33f9:	31 db                	xor    %ebx,%ebx
{
    33fb:	83 ec 64             	sub    $0x64,%esp
  printf(1, "fsfull test\n");
    33fe:	68 4b 4d 00 00       	push   $0x4d4b
    3403:	6a 01                	push   $0x1
    3405:	e8 76 06 00 00       	call   3a80 <printf>
    340a:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    340d:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3412:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    3417:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    341a:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    341e:	f7 e3                	mul    %ebx
    name[5] = '\0';
    3420:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3424:	c1 ea 06             	shr    $0x6,%edx
    3427:	8d 42 30             	lea    0x30(%edx),%eax
    342a:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    342d:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    3433:	89 da                	mov    %ebx,%edx
    3435:	29 c2                	sub    %eax,%edx
    3437:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    343c:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    343e:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3443:	c1 ea 05             	shr    $0x5,%edx
    3446:	83 c2 30             	add    $0x30,%edx
    3449:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    344c:	f7 e3                	mul    %ebx
    344e:	c1 ea 05             	shr    $0x5,%edx
    3451:	6b c2 64             	imul   $0x64,%edx,%eax
    3454:	89 da                	mov    %ebx,%edx
    3456:	29 c2                	sub    %eax,%edx
    3458:	89 d0                	mov    %edx,%eax
    345a:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    345c:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    345e:	c1 ea 03             	shr    $0x3,%edx
    3461:	83 c2 30             	add    $0x30,%edx
    3464:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3467:	f7 e1                	mul    %ecx
    3469:	89 d8                	mov    %ebx,%eax
    346b:	c1 ea 03             	shr    $0x3,%edx
    346e:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3471:	01 d2                	add    %edx,%edx
    3473:	29 d0                	sub    %edx,%eax
    3475:	83 c0 30             	add    $0x30,%eax
    3478:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    347b:	57                   	push   %edi
    347c:	68 58 4d 00 00       	push   $0x4d58
    3481:	6a 01                	push   $0x1
    3483:	e8 f8 05 00 00       	call   3a80 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3488:	58                   	pop    %eax
    3489:	5a                   	pop    %edx
    348a:	68 02 02 00 00       	push   $0x202
    348f:	57                   	push   %edi
    3490:	e8 be 04 00 00       	call   3953 <open>
    if(fd < 0){
    3495:	83 c4 10             	add    $0x10,%esp
    3498:	85 c0                	test   %eax,%eax
    349a:	0f 89 b8 00 00 00    	jns    3558 <fsfull+0x168>
      printf(1, "open %s failed\n", name);
    34a0:	83 ec 04             	sub    $0x4,%esp
    34a3:	57                   	push   %edi
    34a4:	68 64 4d 00 00       	push   $0x4d64
    34a9:	6a 01                	push   $0x1
    34ab:	e8 d0 05 00 00       	call   3a80 <printf>
      break;
    34b0:	83 c4 10             	add    $0x10,%esp
    name[2] = '0' + (nfiles % 1000) / 100;
    34b3:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    34b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    34bf:	00 
    name[1] = '0' + nfiles / 1000;
    34c0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    unlink(name);
    34c5:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    34c8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    34cc:	f7 e3                	mul    %ebx
    name[5] = '\0';
    34ce:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    34d2:	c1 ea 06             	shr    $0x6,%edx
    34d5:	8d 42 30             	lea    0x30(%edx),%eax
    34d8:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    34db:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    34e1:	89 da                	mov    %ebx,%edx
    34e3:	29 c2                	sub    %eax,%edx
    34e5:	89 d0                	mov    %edx,%eax
    34e7:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    34e9:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34eb:	c1 ea 05             	shr    $0x5,%edx
    34ee:	83 c2 30             	add    $0x30,%edx
    34f1:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    34f4:	f7 e6                	mul    %esi
    34f6:	c1 ea 05             	shr    $0x5,%edx
    34f9:	6b ca 64             	imul   $0x64,%edx,%ecx
    34fc:	89 da                	mov    %ebx,%edx
    34fe:	29 ca                	sub    %ecx,%edx
    3500:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    3505:	89 d0                	mov    %edx,%eax
    3507:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    3509:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    350b:	c1 ea 03             	shr    $0x3,%edx
    350e:	83 c2 30             	add    $0x30,%edx
    3511:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3514:	f7 e1                	mul    %ecx
    3516:	89 d8                	mov    %ebx,%eax
    nfiles--;
    3518:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    351b:	c1 ea 03             	shr    $0x3,%edx
    351e:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3521:	01 d2                	add    %edx,%edx
    3523:	29 d0                	sub    %edx,%eax
    3525:	83 c0 30             	add    $0x30,%eax
    3528:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    352b:	57                   	push   %edi
    352c:	e8 32 04 00 00       	call   3963 <unlink>
  while(nfiles >= 0){
    3531:	83 c4 10             	add    $0x10,%esp
    3534:	83 fb ff             	cmp    $0xffffffff,%ebx
    3537:	75 87                	jne    34c0 <fsfull+0xd0>
  printf(1, "fsfull test finished\n");
    3539:	83 ec 08             	sub    $0x8,%esp
    353c:	68 84 4d 00 00       	push   $0x4d84
    3541:	6a 01                	push   $0x1
    3543:	e8 38 05 00 00       	call   3a80 <printf>
}
    3548:	83 c4 10             	add    $0x10,%esp
    354b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    354e:	5b                   	pop    %ebx
    354f:	5e                   	pop    %esi
    3550:	5f                   	pop    %edi
    3551:	5d                   	pop    %ebp
    3552:	c3                   	ret
    3553:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    int total = 0;
    3558:	89 5d a4             	mov    %ebx,-0x5c(%ebp)
    355b:	31 f6                	xor    %esi,%esi
    355d:	89 c3                	mov    %eax,%ebx
    355f:	eb 09                	jmp    356a <fsfull+0x17a>
    3561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      total += cc;
    3568:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    356a:	83 ec 04             	sub    $0x4,%esp
    356d:	68 00 02 00 00       	push   $0x200
    3572:	68 20 86 00 00       	push   $0x8620
    3577:	53                   	push   %ebx
    3578:	e8 b6 03 00 00       	call   3933 <write>
      if(cc < 512)
    357d:	83 c4 10             	add    $0x10,%esp
    3580:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3585:	7f e1                	jg     3568 <fsfull+0x178>
    printf(1, "wrote %d bytes\n", total);
    3587:	83 ec 04             	sub    $0x4,%esp
    358a:	89 5d a0             	mov    %ebx,-0x60(%ebp)
    358d:	8b 5d a4             	mov    -0x5c(%ebp),%ebx
    3590:	56                   	push   %esi
    3591:	68 74 4d 00 00       	push   $0x4d74
    3596:	6a 01                	push   $0x1
    3598:	e8 e3 04 00 00       	call   3a80 <printf>
    close(fd);
    359d:	8b 4d a0             	mov    -0x60(%ebp),%ecx
    35a0:	89 0c 24             	mov    %ecx,(%esp)
    35a3:	e8 93 03 00 00       	call   393b <close>
    if(total == 0)
    35a8:	83 c4 10             	add    $0x10,%esp
    35ab:	85 f6                	test   %esi,%esi
    35ad:	0f 84 00 ff ff ff    	je     34b3 <fsfull+0xc3>
  for(nfiles = 0; ; nfiles++){
    35b3:	83 c3 01             	add    $0x1,%ebx
    35b6:	e9 52 fe ff ff       	jmp    340d <fsfull+0x1d>
    35bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000035c0 <uio>:
{
    35c0:	55                   	push   %ebp
    35c1:	89 e5                	mov    %esp,%ebp
    35c3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    35c6:	68 9a 4d 00 00       	push   $0x4d9a
    35cb:	6a 01                	push   $0x1
    35cd:	e8 ae 04 00 00       	call   3a80 <printf>
  pid = fork();
    35d2:	e8 34 03 00 00       	call   390b <fork>
  if(pid == 0){
    35d7:	83 c4 10             	add    $0x10,%esp
    35da:	85 c0                	test   %eax,%eax
    35dc:	74 1b                	je     35f9 <uio+0x39>
  } else if(pid < 0){
    35de:	78 3d                	js     361d <uio+0x5d>
  wait();
    35e0:	e8 36 03 00 00       	call   391b <wait>
  printf(1, "uio test done\n");
    35e5:	83 ec 08             	sub    $0x8,%esp
    35e8:	68 a4 4d 00 00       	push   $0x4da4
    35ed:	6a 01                	push   $0x1
    35ef:	e8 8c 04 00 00       	call   3a80 <printf>
}
    35f4:	83 c4 10             	add    $0x10,%esp
    35f7:	c9                   	leave
    35f8:	c3                   	ret
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    35f9:	b8 09 00 00 00       	mov    $0x9,%eax
    35fe:	ba 70 00 00 00       	mov    $0x70,%edx
    3603:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3604:	ba 71 00 00 00       	mov    $0x71,%edx
    3609:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    360a:	52                   	push   %edx
    360b:	52                   	push   %edx
    360c:	68 38 55 00 00       	push   $0x5538
    3611:	6a 01                	push   $0x1
    3613:	e8 68 04 00 00       	call   3a80 <printf>
    exit();
    3618:	e8 f6 02 00 00       	call   3913 <exit>
    printf (1, "fork failed\n");
    361d:	50                   	push   %eax
    361e:	50                   	push   %eax
    361f:	68 29 4d 00 00       	push   $0x4d29
    3624:	6a 01                	push   $0x1
    3626:	e8 55 04 00 00       	call   3a80 <printf>
    exit();
    362b:	e8 e3 02 00 00       	call   3913 <exit>

00003630 <argptest>:
{
    3630:	55                   	push   %ebp
    3631:	89 e5                	mov    %esp,%ebp
    3633:	53                   	push   %ebx
    3634:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3637:	6a 00                	push   $0x0
    3639:	68 b3 4d 00 00       	push   $0x4db3
    363e:	e8 10 03 00 00       	call   3953 <open>
  if (fd < 0) {
    3643:	83 c4 10             	add    $0x10,%esp
    3646:	85 c0                	test   %eax,%eax
    3648:	78 39                	js     3683 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    364a:	83 ec 0c             	sub    $0xc,%esp
    364d:	89 c3                	mov    %eax,%ebx
    364f:	6a 00                	push   $0x0
    3651:	e8 45 03 00 00       	call   399b <sbrk>
    3656:	83 c4 0c             	add    $0xc,%esp
    3659:	83 e8 01             	sub    $0x1,%eax
    365c:	6a ff                	push   $0xffffffff
    365e:	50                   	push   %eax
    365f:	53                   	push   %ebx
    3660:	e8 c6 02 00 00       	call   392b <read>
  close(fd);
    3665:	89 1c 24             	mov    %ebx,(%esp)
    3668:	e8 ce 02 00 00       	call   393b <close>
  printf(1, "arg test passed\n");
    366d:	58                   	pop    %eax
    366e:	5a                   	pop    %edx
    366f:	68 c5 4d 00 00       	push   $0x4dc5
    3674:	6a 01                	push   $0x1
    3676:	e8 05 04 00 00       	call   3a80 <printf>
}
    367b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    367e:	83 c4 10             	add    $0x10,%esp
    3681:	c9                   	leave
    3682:	c3                   	ret
    printf(2, "open failed\n");
    3683:	51                   	push   %ecx
    3684:	51                   	push   %ecx
    3685:	68 b8 4d 00 00       	push   $0x4db8
    368a:	6a 02                	push   $0x2
    368c:	e8 ef 03 00 00       	call   3a80 <printf>
    exit();
    3691:	e8 7d 02 00 00       	call   3913 <exit>
    3696:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    369d:	00 
    369e:	66 90                	xchg   %ax,%ax

000036a0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    36a0:	69 05 d4 5e 00 00 0d 	imul   $0x19660d,0x5ed4,%eax
    36a7:	66 19 00 
    36aa:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    36af:	a3 d4 5e 00 00       	mov    %eax,0x5ed4
}
    36b4:	c3                   	ret
    36b5:	66 90                	xchg   %ax,%ax
    36b7:	66 90                	xchg   %ax,%ax
    36b9:	66 90                	xchg   %ax,%ax
    36bb:	66 90                	xchg   %ax,%ax
    36bd:	66 90                	xchg   %ax,%ax
    36bf:	90                   	nop

000036c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    36c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    36c1:	31 c0                	xor    %eax,%eax
{
    36c3:	89 e5                	mov    %esp,%ebp
    36c5:	53                   	push   %ebx
    36c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
    36c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    36cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    36d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    36d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    36d7:	83 c0 01             	add    $0x1,%eax
    36da:	84 d2                	test   %dl,%dl
    36dc:	75 f2                	jne    36d0 <strcpy+0x10>
    ;
  return os;
}
    36de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    36e1:	89 c8                	mov    %ecx,%eax
    36e3:	c9                   	leave
    36e4:	c3                   	ret
    36e5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36ec:	00 
    36ed:	8d 76 00             	lea    0x0(%esi),%esi

000036f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    36f0:	55                   	push   %ebp
    36f1:	89 e5                	mov    %esp,%ebp
    36f3:	53                   	push   %ebx
    36f4:	8b 55 08             	mov    0x8(%ebp),%edx
    36f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    36fa:	0f b6 02             	movzbl (%edx),%eax
    36fd:	84 c0                	test   %al,%al
    36ff:	75 2f                	jne    3730 <strcmp+0x40>
    3701:	eb 4a                	jmp    374d <strcmp+0x5d>
    3703:	eb 1b                	jmp    3720 <strcmp+0x30>
    3705:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    370c:	00 
    370d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3714:	00 
    3715:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    371c:	00 
    371d:	8d 76 00             	lea    0x0(%esi),%esi
    3720:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    3724:	83 c2 01             	add    $0x1,%edx
    3727:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    372a:	84 c0                	test   %al,%al
    372c:	74 12                	je     3740 <strcmp+0x50>
    372e:	89 d9                	mov    %ebx,%ecx
    3730:	0f b6 19             	movzbl (%ecx),%ebx
    3733:	38 c3                	cmp    %al,%bl
    3735:	74 e9                	je     3720 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
    3737:	29 d8                	sub    %ebx,%eax
}
    3739:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    373c:	c9                   	leave
    373d:	c3                   	ret
    373e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
    3740:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3744:	31 c0                	xor    %eax,%eax
    3746:	29 d8                	sub    %ebx,%eax
}
    3748:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    374b:	c9                   	leave
    374c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
    374d:	0f b6 19             	movzbl (%ecx),%ebx
    3750:	31 c0                	xor    %eax,%eax
    3752:	eb e3                	jmp    3737 <strcmp+0x47>
    3754:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    375b:	00 
    375c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003760 <strlen>:

uint
strlen(const char *s)
{
    3760:	55                   	push   %ebp
    3761:	89 e5                	mov    %esp,%ebp
    3763:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3766:	80 3a 00             	cmpb   $0x0,(%edx)
    3769:	74 15                	je     3780 <strlen+0x20>
    376b:	31 c0                	xor    %eax,%eax
    376d:	8d 76 00             	lea    0x0(%esi),%esi
    3770:	83 c0 01             	add    $0x1,%eax
    3773:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3777:	89 c1                	mov    %eax,%ecx
    3779:	75 f5                	jne    3770 <strlen+0x10>
    ;
  return n;
}
    377b:	89 c8                	mov    %ecx,%eax
    377d:	5d                   	pop    %ebp
    377e:	c3                   	ret
    377f:	90                   	nop
  for(n = 0; s[n]; n++)
    3780:	31 c9                	xor    %ecx,%ecx
}
    3782:	5d                   	pop    %ebp
    3783:	89 c8                	mov    %ecx,%eax
    3785:	c3                   	ret
    3786:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    378d:	00 
    378e:	66 90                	xchg   %ax,%ax

00003790 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	57                   	push   %edi
    3794:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3797:	8b 4d 10             	mov    0x10(%ebp),%ecx
    379a:	8b 45 0c             	mov    0xc(%ebp),%eax
    379d:	89 d7                	mov    %edx,%edi
    379f:	fc                   	cld
    37a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    37a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
    37a5:	89 d0                	mov    %edx,%eax
    37a7:	c9                   	leave
    37a8:	c3                   	ret
    37a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000037b0 <strchr>:

char*
strchr(const char *s, char c)
{
    37b0:	55                   	push   %ebp
    37b1:	89 e5                	mov    %esp,%ebp
    37b3:	8b 45 08             	mov    0x8(%ebp),%eax
    37b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    37ba:	0f b6 10             	movzbl (%eax),%edx
    37bd:	84 d2                	test   %dl,%dl
    37bf:	75 1a                	jne    37db <strchr+0x2b>
    37c1:	eb 25                	jmp    37e8 <strchr+0x38>
    37c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    37ca:	00 
    37cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    37d0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    37d4:	83 c0 01             	add    $0x1,%eax
    37d7:	84 d2                	test   %dl,%dl
    37d9:	74 0d                	je     37e8 <strchr+0x38>
    if(*s == c)
    37db:	38 d1                	cmp    %dl,%cl
    37dd:	75 f1                	jne    37d0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    37df:	5d                   	pop    %ebp
    37e0:	c3                   	ret
    37e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    37e8:	31 c0                	xor    %eax,%eax
}
    37ea:	5d                   	pop    %ebp
    37eb:	c3                   	ret
    37ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037f0 <gets>:

char*
gets(char *buf, int max)
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
    37f3:	57                   	push   %edi
    37f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    37f5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
    37f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    37f9:	31 db                	xor    %ebx,%ebx
{
    37fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    37fe:	eb 27                	jmp    3827 <gets+0x37>
    cc = read(0, &c, 1);
    3800:	83 ec 04             	sub    $0x4,%esp
    3803:	6a 01                	push   $0x1
    3805:	56                   	push   %esi
    3806:	6a 00                	push   $0x0
    3808:	e8 1e 01 00 00       	call   392b <read>
    if(cc < 1)
    380d:	83 c4 10             	add    $0x10,%esp
    3810:	85 c0                	test   %eax,%eax
    3812:	7e 1d                	jle    3831 <gets+0x41>
      break;
    buf[i++] = c;
    3814:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3818:	8b 55 08             	mov    0x8(%ebp),%edx
    381b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    381f:	3c 0a                	cmp    $0xa,%al
    3821:	74 10                	je     3833 <gets+0x43>
    3823:	3c 0d                	cmp    $0xd,%al
    3825:	74 0c                	je     3833 <gets+0x43>
  for(i=0; i+1 < max; ){
    3827:	89 df                	mov    %ebx,%edi
    3829:	83 c3 01             	add    $0x1,%ebx
    382c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    382f:	7c cf                	jl     3800 <gets+0x10>
    3831:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
    3833:	8b 45 08             	mov    0x8(%ebp),%eax
    3836:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
    383a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    383d:	5b                   	pop    %ebx
    383e:	5e                   	pop    %esi
    383f:	5f                   	pop    %edi
    3840:	5d                   	pop    %ebp
    3841:	c3                   	ret
    3842:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3849:	00 
    384a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003850 <stat>:

int
stat(const char *n, struct stat *st)
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	56                   	push   %esi
    3854:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3855:	83 ec 08             	sub    $0x8,%esp
    3858:	6a 00                	push   $0x0
    385a:	ff 75 08             	push   0x8(%ebp)
    385d:	e8 f1 00 00 00       	call   3953 <open>
  if(fd < 0)
    3862:	83 c4 10             	add    $0x10,%esp
    3865:	85 c0                	test   %eax,%eax
    3867:	78 27                	js     3890 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3869:	83 ec 08             	sub    $0x8,%esp
    386c:	ff 75 0c             	push   0xc(%ebp)
    386f:	89 c3                	mov    %eax,%ebx
    3871:	50                   	push   %eax
    3872:	e8 f4 00 00 00       	call   396b <fstat>
  close(fd);
    3877:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    387a:	89 c6                	mov    %eax,%esi
  close(fd);
    387c:	e8 ba 00 00 00       	call   393b <close>
  return r;
    3881:	83 c4 10             	add    $0x10,%esp
}
    3884:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3887:	89 f0                	mov    %esi,%eax
    3889:	5b                   	pop    %ebx
    388a:	5e                   	pop    %esi
    388b:	5d                   	pop    %ebp
    388c:	c3                   	ret
    388d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3890:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3895:	eb ed                	jmp    3884 <stat+0x34>
    3897:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    389e:	00 
    389f:	90                   	nop

000038a0 <atoi>:

int
atoi(const char *s)
{
    38a0:	55                   	push   %ebp
    38a1:	89 e5                	mov    %esp,%ebp
    38a3:	53                   	push   %ebx
    38a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    38a7:	0f be 02             	movsbl (%edx),%eax
    38aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
    38ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    38b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    38b5:	77 1e                	ja     38d5 <atoi+0x35>
    38b7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38be:	00 
    38bf:	90                   	nop
    n = n*10 + *s++ - '0';
    38c0:	83 c2 01             	add    $0x1,%edx
    38c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    38c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    38ca:	0f be 02             	movsbl (%edx),%eax
    38cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
    38d0:	80 fb 09             	cmp    $0x9,%bl
    38d3:	76 eb                	jbe    38c0 <atoi+0x20>
  return n;
}
    38d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    38d8:	89 c8                	mov    %ecx,%eax
    38da:	c9                   	leave
    38db:	c3                   	ret
    38dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    38e0:	55                   	push   %ebp
    38e1:	89 e5                	mov    %esp,%ebp
    38e3:	57                   	push   %edi
    38e4:	8b 45 10             	mov    0x10(%ebp),%eax
    38e7:	8b 55 08             	mov    0x8(%ebp),%edx
    38ea:	56                   	push   %esi
    38eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    38ee:	85 c0                	test   %eax,%eax
    38f0:	7e 13                	jle    3905 <memmove+0x25>
    38f2:	01 d0                	add    %edx,%eax
  dst = vdst;
    38f4:	89 d7                	mov    %edx,%edi
    38f6:	66 90                	xchg   %ax,%ax
    38f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38ff:	00 
    *dst++ = *src++;
    3900:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3901:	39 f8                	cmp    %edi,%eax
    3903:	75 fb                	jne    3900 <memmove+0x20>
  return vdst;
}
    3905:	5e                   	pop    %esi
    3906:	89 d0                	mov    %edx,%eax
    3908:	5f                   	pop    %edi
    3909:	5d                   	pop    %ebp
    390a:	c3                   	ret

0000390b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    390b:	b8 01 00 00 00       	mov    $0x1,%eax
    3910:	cd 40                	int    $0x40
    3912:	c3                   	ret

00003913 <exit>:
SYSCALL(exit)
    3913:	b8 02 00 00 00       	mov    $0x2,%eax
    3918:	cd 40                	int    $0x40
    391a:	c3                   	ret

0000391b <wait>:
SYSCALL(wait)
    391b:	b8 03 00 00 00       	mov    $0x3,%eax
    3920:	cd 40                	int    $0x40
    3922:	c3                   	ret

00003923 <pipe>:
SYSCALL(pipe)
    3923:	b8 04 00 00 00       	mov    $0x4,%eax
    3928:	cd 40                	int    $0x40
    392a:	c3                   	ret

0000392b <read>:
SYSCALL(read)
    392b:	b8 05 00 00 00       	mov    $0x5,%eax
    3930:	cd 40                	int    $0x40
    3932:	c3                   	ret

00003933 <write>:
SYSCALL(write)
    3933:	b8 10 00 00 00       	mov    $0x10,%eax
    3938:	cd 40                	int    $0x40
    393a:	c3                   	ret

0000393b <close>:
SYSCALL(close)
    393b:	b8 15 00 00 00       	mov    $0x15,%eax
    3940:	cd 40                	int    $0x40
    3942:	c3                   	ret

00003943 <kill>:
SYSCALL(kill)
    3943:	b8 06 00 00 00       	mov    $0x6,%eax
    3948:	cd 40                	int    $0x40
    394a:	c3                   	ret

0000394b <exec>:
SYSCALL(exec)
    394b:	b8 07 00 00 00       	mov    $0x7,%eax
    3950:	cd 40                	int    $0x40
    3952:	c3                   	ret

00003953 <open>:
SYSCALL(open)
    3953:	b8 0f 00 00 00       	mov    $0xf,%eax
    3958:	cd 40                	int    $0x40
    395a:	c3                   	ret

0000395b <mknod>:
SYSCALL(mknod)
    395b:	b8 11 00 00 00       	mov    $0x11,%eax
    3960:	cd 40                	int    $0x40
    3962:	c3                   	ret

00003963 <unlink>:
SYSCALL(unlink)
    3963:	b8 12 00 00 00       	mov    $0x12,%eax
    3968:	cd 40                	int    $0x40
    396a:	c3                   	ret

0000396b <fstat>:
SYSCALL(fstat)
    396b:	b8 08 00 00 00       	mov    $0x8,%eax
    3970:	cd 40                	int    $0x40
    3972:	c3                   	ret

00003973 <link>:
SYSCALL(link)
    3973:	b8 13 00 00 00       	mov    $0x13,%eax
    3978:	cd 40                	int    $0x40
    397a:	c3                   	ret

0000397b <mkdir>:
SYSCALL(mkdir)
    397b:	b8 14 00 00 00       	mov    $0x14,%eax
    3980:	cd 40                	int    $0x40
    3982:	c3                   	ret

00003983 <chdir>:
SYSCALL(chdir)
    3983:	b8 09 00 00 00       	mov    $0x9,%eax
    3988:	cd 40                	int    $0x40
    398a:	c3                   	ret

0000398b <dup>:
SYSCALL(dup)
    398b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3990:	cd 40                	int    $0x40
    3992:	c3                   	ret

00003993 <getpid>:
SYSCALL(getpid)
    3993:	b8 0b 00 00 00       	mov    $0xb,%eax
    3998:	cd 40                	int    $0x40
    399a:	c3                   	ret

0000399b <sbrk>:
SYSCALL(sbrk)
    399b:	b8 0c 00 00 00       	mov    $0xc,%eax
    39a0:	cd 40                	int    $0x40
    39a2:	c3                   	ret

000039a3 <sleep>:
SYSCALL(sleep)
    39a3:	b8 0d 00 00 00       	mov    $0xd,%eax
    39a8:	cd 40                	int    $0x40
    39aa:	c3                   	ret

000039ab <uptime>:
SYSCALL(uptime)
    39ab:	b8 0e 00 00 00       	mov    $0xe,%eax
    39b0:	cd 40                	int    $0x40
    39b2:	c3                   	ret
    39b3:	66 90                	xchg   %ax,%ax
    39b5:	66 90                	xchg   %ax,%ax
    39b7:	66 90                	xchg   %ax,%ax
    39b9:	66 90                	xchg   %ax,%ax
    39bb:	66 90                	xchg   %ax,%ax
    39bd:	66 90                	xchg   %ax,%ax
    39bf:	90                   	nop

000039c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    39c0:	55                   	push   %ebp
    39c1:	89 e5                	mov    %esp,%ebp
    39c3:	57                   	push   %edi
    39c4:	56                   	push   %esi
    39c5:	53                   	push   %ebx
    39c6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    39c8:	89 d1                	mov    %edx,%ecx
{
    39ca:	83 ec 3c             	sub    $0x3c,%esp
    39cd:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
    39d0:	85 d2                	test   %edx,%edx
    39d2:	0f 89 98 00 00 00    	jns    3a70 <printint+0xb0>
    39d8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    39dc:	0f 84 8e 00 00 00    	je     3a70 <printint+0xb0>
    x = -xx;
    39e2:	f7 d9                	neg    %ecx
    neg = 1;
    39e4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
    39e9:	89 45 c0             	mov    %eax,-0x40(%ebp)
    39ec:	31 f6                	xor    %esi,%esi
    39ee:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39f5:	00 
    39f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39fd:	00 
    39fe:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
    3a00:	89 c8                	mov    %ecx,%eax
    3a02:	31 d2                	xor    %edx,%edx
    3a04:	89 f7                	mov    %esi,%edi
    3a06:	f7 f3                	div    %ebx
    3a08:	8d 76 01             	lea    0x1(%esi),%esi
    3a0b:	0f b6 92 e8 55 00 00 	movzbl 0x55e8(%edx),%edx
    3a12:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
    3a16:	89 ca                	mov    %ecx,%edx
    3a18:	89 c1                	mov    %eax,%ecx
    3a1a:	39 da                	cmp    %ebx,%edx
    3a1c:	73 e2                	jae    3a00 <printint+0x40>
  if(neg)
    3a1e:	8b 45 c0             	mov    -0x40(%ebp),%eax
    3a21:	85 c0                	test   %eax,%eax
    3a23:	74 07                	je     3a2c <printint+0x6c>
    buf[i++] = '-';
    3a25:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    3a2a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
    3a2c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
    3a2f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
    3a32:	01 df                	add    %ebx,%edi
    3a34:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a3b:	00 
    3a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
    3a40:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
    3a43:	83 ec 04             	sub    $0x4,%esp
    3a46:	88 45 d7             	mov    %al,-0x29(%ebp)
    3a49:	8d 45 d7             	lea    -0x29(%ebp),%eax
    3a4c:	6a 01                	push   $0x1
    3a4e:	50                   	push   %eax
    3a4f:	56                   	push   %esi
    3a50:	e8 de fe ff ff       	call   3933 <write>
  while(--i >= 0)
    3a55:	89 f8                	mov    %edi,%eax
    3a57:	83 c4 10             	add    $0x10,%esp
    3a5a:	83 ef 01             	sub    $0x1,%edi
    3a5d:	39 d8                	cmp    %ebx,%eax
    3a5f:	75 df                	jne    3a40 <printint+0x80>
}
    3a61:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a64:	5b                   	pop    %ebx
    3a65:	5e                   	pop    %esi
    3a66:	5f                   	pop    %edi
    3a67:	5d                   	pop    %ebp
    3a68:	c3                   	ret
    3a69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3a70:	31 c0                	xor    %eax,%eax
    3a72:	e9 72 ff ff ff       	jmp    39e9 <printint+0x29>
    3a77:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a7e:	00 
    3a7f:	90                   	nop

00003a80 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3a80:	55                   	push   %ebp
    3a81:	89 e5                	mov    %esp,%ebp
    3a83:	57                   	push   %edi
    3a84:	56                   	push   %esi
    3a85:	53                   	push   %ebx
    3a86:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    3a8c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    3a8f:	0f b6 13             	movzbl (%ebx),%edx
    3a92:	83 c3 01             	add    $0x1,%ebx
    3a95:	84 d2                	test   %dl,%dl
    3a97:	0f 84 a0 00 00 00    	je     3b3d <printf+0xbd>
    3a9d:	8d 45 10             	lea    0x10(%ebp),%eax
    3aa0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    3aa3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3aa6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    3aa9:	eb 28                	jmp    3ad3 <printf+0x53>
    3aab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3ab0:	83 ec 04             	sub    $0x4,%esp
    3ab3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3ab6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
    3ab9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3abc:	6a 01                	push   $0x1
    3abe:	50                   	push   %eax
    3abf:	56                   	push   %esi
    3ac0:	e8 6e fe ff ff       	call   3933 <write>
  for(i = 0; fmt[i]; i++){
    3ac5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3ac9:	83 c4 10             	add    $0x10,%esp
    3acc:	84 d2                	test   %dl,%dl
    3ace:	74 6d                	je     3b3d <printf+0xbd>
    c = fmt[i] & 0xff;
    3ad0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
    3ad3:	83 f8 25             	cmp    $0x25,%eax
    3ad6:	75 d8                	jne    3ab0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
    3ad8:	0f b6 13             	movzbl (%ebx),%edx
    3adb:	84 d2                	test   %dl,%dl
    3add:	74 5e                	je     3b3d <printf+0xbd>
    c = fmt[i] & 0xff;
    3adf:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    3ae2:	80 fa 25             	cmp    $0x25,%dl
    3ae5:	0f 84 1d 01 00 00    	je     3c08 <printf+0x188>
    3aeb:	83 e8 63             	sub    $0x63,%eax
    3aee:	83 f8 15             	cmp    $0x15,%eax
    3af1:	77 0d                	ja     3b00 <printf+0x80>
    3af3:	ff 24 85 90 55 00 00 	jmp    *0x5590(,%eax,4)
    3afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3b00:	83 ec 04             	sub    $0x4,%esp
    3b03:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3b06:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
    3b09:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    3b0d:	6a 01                	push   $0x1
    3b0f:	51                   	push   %ecx
    3b10:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    3b13:	56                   	push   %esi
    3b14:	e8 1a fe ff ff       	call   3933 <write>
        putc(fd, c);
    3b19:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
    3b1d:	83 c4 0c             	add    $0xc,%esp
    3b20:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3b23:	6a 01                	push   $0x1
    3b25:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    3b28:	51                   	push   %ecx
    3b29:	56                   	push   %esi
    3b2a:	e8 04 fe ff ff       	call   3933 <write>
  for(i = 0; fmt[i]; i++){
    3b2f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3b33:	83 c3 02             	add    $0x2,%ebx
    3b36:	83 c4 10             	add    $0x10,%esp
    3b39:	84 d2                	test   %dl,%dl
    3b3b:	75 93                	jne    3ad0 <printf+0x50>
      }
      state = 0;
    }
  }
}
    3b3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3b40:	5b                   	pop    %ebx
    3b41:	5e                   	pop    %esi
    3b42:	5f                   	pop    %edi
    3b43:	5d                   	pop    %ebp
    3b44:	c3                   	ret
    3b45:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3b48:	83 ec 0c             	sub    $0xc,%esp
    3b4b:	8b 17                	mov    (%edi),%edx
    3b4d:	b9 10 00 00 00       	mov    $0x10,%ecx
    3b52:	89 f0                	mov    %esi,%eax
    3b54:	6a 00                	push   $0x0
        ap++;
    3b56:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 16, 0);
    3b59:	e8 62 fe ff ff       	call   39c0 <printint>
  for(i = 0; fmt[i]; i++){
    3b5e:	eb cf                	jmp    3b2f <printf+0xaf>
        s = (char*)*ap;
    3b60:	8b 07                	mov    (%edi),%eax
        ap++;
    3b62:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    3b65:	85 c0                	test   %eax,%eax
    3b67:	0f 84 b3 00 00 00    	je     3c20 <printf+0x1a0>
        while(*s != 0){
    3b6d:	0f b6 10             	movzbl (%eax),%edx
    3b70:	84 d2                	test   %dl,%dl
    3b72:	0f 84 ba 00 00 00    	je     3c32 <printf+0x1b2>
    3b78:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3b7b:	89 c7                	mov    %eax,%edi
    3b7d:	89 d0                	mov    %edx,%eax
    3b7f:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3b82:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    3b85:	89 fb                	mov    %edi,%ebx
    3b87:	89 cf                	mov    %ecx,%edi
    3b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3b90:	83 ec 04             	sub    $0x4,%esp
    3b93:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    3b96:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3b99:	6a 01                	push   $0x1
    3b9b:	57                   	push   %edi
    3b9c:	56                   	push   %esi
    3b9d:	e8 91 fd ff ff       	call   3933 <write>
        while(*s != 0){
    3ba2:	0f b6 03             	movzbl (%ebx),%eax
    3ba5:	83 c4 10             	add    $0x10,%esp
    3ba8:	84 c0                	test   %al,%al
    3baa:	75 e4                	jne    3b90 <printf+0x110>
    3bac:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
    3baf:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3bb3:	83 c3 02             	add    $0x2,%ebx
    3bb6:	84 d2                	test   %dl,%dl
    3bb8:	0f 85 e5 fe ff ff    	jne    3aa3 <printf+0x23>
    3bbe:	e9 7a ff ff ff       	jmp    3b3d <printf+0xbd>
    3bc3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    3bc8:	83 ec 0c             	sub    $0xc,%esp
    3bcb:	8b 17                	mov    (%edi),%edx
    3bcd:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3bd2:	89 f0                	mov    %esi,%eax
    3bd4:	6a 01                	push   $0x1
        ap++;
    3bd6:	83 c7 04             	add    $0x4,%edi
        printint(fd, *ap, 10, 1);
    3bd9:	e8 e2 fd ff ff       	call   39c0 <printint>
  for(i = 0; fmt[i]; i++){
    3bde:	e9 4c ff ff ff       	jmp    3b2f <printf+0xaf>
    3be3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    3be8:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    3bea:	83 ec 04             	sub    $0x4,%esp
    3bed:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        ap++;
    3bf0:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    3bf3:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3bf6:	6a 01                	push   $0x1
    3bf8:	51                   	push   %ecx
    3bf9:	56                   	push   %esi
    3bfa:	e8 34 fd ff ff       	call   3933 <write>
  for(i = 0; fmt[i]; i++){
    3bff:	e9 2b ff ff ff       	jmp    3b2f <printf+0xaf>
    3c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3c08:	83 ec 04             	sub    $0x4,%esp
    3c0b:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3c0e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3c11:	6a 01                	push   $0x1
    3c13:	e9 10 ff ff ff       	jmp    3b28 <printf+0xa8>
    3c18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c1f:	00 
          s = "(null)";
    3c20:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3c23:	b8 28 00 00 00       	mov    $0x28,%eax
    3c28:	bf 09 4e 00 00       	mov    $0x4e09,%edi
    3c2d:	e9 4d ff ff ff       	jmp    3b7f <printf+0xff>
  for(i = 0; fmt[i]; i++){
    3c32:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3c36:	83 c3 02             	add    $0x2,%ebx
    3c39:	84 d2                	test   %dl,%dl
    3c3b:	0f 85 8f fe ff ff    	jne    3ad0 <printf+0x50>
    3c41:	e9 f7 fe ff ff       	jmp    3b3d <printf+0xbd>
    3c46:	66 90                	xchg   %ax,%ax
    3c48:	66 90                	xchg   %ax,%ax
    3c4a:	66 90                	xchg   %ax,%ax
    3c4c:	66 90                	xchg   %ax,%ax
    3c4e:	66 90                	xchg   %ax,%ax
    3c50:	66 90                	xchg   %ax,%ax
    3c52:	66 90                	xchg   %ax,%ax
    3c54:	66 90                	xchg   %ax,%ax
    3c56:	66 90                	xchg   %ax,%ax
    3c58:	66 90                	xchg   %ax,%ax
    3c5a:	66 90                	xchg   %ax,%ax
    3c5c:	66 90                	xchg   %ax,%ax
    3c5e:	66 90                	xchg   %ax,%ax

00003c60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c61:	a1 a0 a6 00 00       	mov    0xa6a0,%eax
{
    3c66:	89 e5                	mov    %esp,%ebp
    3c68:	57                   	push   %edi
    3c69:	56                   	push   %esi
    3c6a:	53                   	push   %ebx
    3c6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3c6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c71:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c78:	00 
    3c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c80:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c82:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c84:	39 ca                	cmp    %ecx,%edx
    3c86:	73 30                	jae    3cb8 <free+0x58>
    3c88:	39 c1                	cmp    %eax,%ecx
    3c8a:	72 04                	jb     3c90 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c8c:	39 c2                	cmp    %eax,%edx
    3c8e:	72 f0                	jb     3c80 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3c90:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c93:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c96:	39 f8                	cmp    %edi,%eax
    3c98:	74 36                	je     3cd0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3c9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3c9d:	8b 42 04             	mov    0x4(%edx),%eax
    3ca0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3ca3:	39 f1                	cmp    %esi,%ecx
    3ca5:	74 40                	je     3ce7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    3ca7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3ca9:	5b                   	pop    %ebx
  freep = p;
    3caa:	89 15 a0 a6 00 00    	mov    %edx,0xa6a0
}
    3cb0:	5e                   	pop    %esi
    3cb1:	5f                   	pop    %edi
    3cb2:	5d                   	pop    %ebp
    3cb3:	c3                   	ret
    3cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3cb8:	39 c2                	cmp    %eax,%edx
    3cba:	72 c4                	jb     3c80 <free+0x20>
    3cbc:	39 c1                	cmp    %eax,%ecx
    3cbe:	73 c0                	jae    3c80 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    3cc0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3cc3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3cc6:	39 f8                	cmp    %edi,%eax
    3cc8:	75 d0                	jne    3c9a <free+0x3a>
    3cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    3cd0:	03 70 04             	add    0x4(%eax),%esi
    3cd3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3cd6:	8b 02                	mov    (%edx),%eax
    3cd8:	8b 00                	mov    (%eax),%eax
    3cda:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    3cdd:	8b 42 04             	mov    0x4(%edx),%eax
    3ce0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3ce3:	39 f1                	cmp    %esi,%ecx
    3ce5:	75 c0                	jne    3ca7 <free+0x47>
    p->s.size += bp->s.size;
    3ce7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    3cea:	89 15 a0 a6 00 00    	mov    %edx,0xa6a0
    p->s.size += bp->s.size;
    3cf0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3cf3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3cf6:	89 0a                	mov    %ecx,(%edx)
}
    3cf8:	5b                   	pop    %ebx
    3cf9:	5e                   	pop    %esi
    3cfa:	5f                   	pop    %edi
    3cfb:	5d                   	pop    %ebp
    3cfc:	c3                   	ret
    3cfd:	8d 76 00             	lea    0x0(%esi),%esi

00003d00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3d00:	55                   	push   %ebp
    3d01:	89 e5                	mov    %esp,%ebp
    3d03:	57                   	push   %edi
    3d04:	56                   	push   %esi
    3d05:	53                   	push   %ebx
    3d06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3d0c:	8b 15 a0 a6 00 00    	mov    0xa6a0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d12:	8d 78 07             	lea    0x7(%eax),%edi
    3d15:	c1 ef 03             	shr    $0x3,%edi
    3d18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3d1b:	85 d2                	test   %edx,%edx
    3d1d:	0f 84 8d 00 00 00    	je     3db0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d25:	8b 48 04             	mov    0x4(%eax),%ecx
    3d28:	39 f9                	cmp    %edi,%ecx
    3d2a:	73 64                	jae    3d90 <malloc+0x90>
  if(nu < 4096)
    3d2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3d31:	39 df                	cmp    %ebx,%edi
    3d33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    3d36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    3d3d:	eb 0a                	jmp    3d49 <malloc+0x49>
    3d3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d42:	8b 48 04             	mov    0x4(%eax),%ecx
    3d45:	39 f9                	cmp    %edi,%ecx
    3d47:	73 47                	jae    3d90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3d49:	89 c2                	mov    %eax,%edx
    3d4b:	39 05 a0 a6 00 00    	cmp    %eax,0xa6a0
    3d51:	75 ed                	jne    3d40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    3d53:	83 ec 0c             	sub    $0xc,%esp
    3d56:	56                   	push   %esi
    3d57:	e8 3f fc ff ff       	call   399b <sbrk>
  if(p == (char*)-1)
    3d5c:	83 c4 10             	add    $0x10,%esp
    3d5f:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d62:	74 1c                	je     3d80 <malloc+0x80>
  hp->s.size = nu;
    3d64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3d67:	83 ec 0c             	sub    $0xc,%esp
    3d6a:	83 c0 08             	add    $0x8,%eax
    3d6d:	50                   	push   %eax
    3d6e:	e8 ed fe ff ff       	call   3c60 <free>
  return freep;
    3d73:	8b 15 a0 a6 00 00    	mov    0xa6a0,%edx
      if((p = morecore(nunits)) == 0)
    3d79:	83 c4 10             	add    $0x10,%esp
    3d7c:	85 d2                	test   %edx,%edx
    3d7e:	75 c0                	jne    3d40 <malloc+0x40>
        return 0;
  }
}
    3d80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3d83:	31 c0                	xor    %eax,%eax
}
    3d85:	5b                   	pop    %ebx
    3d86:	5e                   	pop    %esi
    3d87:	5f                   	pop    %edi
    3d88:	5d                   	pop    %ebp
    3d89:	c3                   	ret
    3d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3d90:	39 cf                	cmp    %ecx,%edi
    3d92:	74 4c                	je     3de0 <malloc+0xe0>
        p->s.size -= nunits;
    3d94:	29 f9                	sub    %edi,%ecx
    3d96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3d99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3d9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    3d9f:	89 15 a0 a6 00 00    	mov    %edx,0xa6a0
}
    3da5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3da8:	83 c0 08             	add    $0x8,%eax
}
    3dab:	5b                   	pop    %ebx
    3dac:	5e                   	pop    %esi
    3dad:	5f                   	pop    %edi
    3dae:	5d                   	pop    %ebp
    3daf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    3db0:	c7 05 a0 a6 00 00 a4 	movl   $0xa6a4,0xa6a0
    3db7:	a6 00 00 
    base.s.size = 0;
    3dba:	b8 a4 a6 00 00       	mov    $0xa6a4,%eax
    base.s.ptr = freep = prevp = &base;
    3dbf:	c7 05 a4 a6 00 00 a4 	movl   $0xa6a4,0xa6a4
    3dc6:	a6 00 00 
    base.s.size = 0;
    3dc9:	c7 05 a8 a6 00 00 00 	movl   $0x0,0xa6a8
    3dd0:	00 00 00 
    if(p->s.size >= nunits){
    3dd3:	e9 54 ff ff ff       	jmp    3d2c <malloc+0x2c>
    3dd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3ddf:	00 
        prevp->s.ptr = p->s.ptr;
    3de0:	8b 08                	mov    (%eax),%ecx
    3de2:	89 0a                	mov    %ecx,(%edx)
    3de4:	eb b9                	jmp    3d9f <malloc+0x9f>
