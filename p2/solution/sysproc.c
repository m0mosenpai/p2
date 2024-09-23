#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_getparentname(void)
{
    char *pbuf;
    char *cbuf;
    uint np, nc;
    struct proc *curproc = myproc();

    if (argstr(0, &pbuf) < 0 || argstr(1, &cbuf) < 0 || argint(2, (int*)&np) < 0 || argint(3, (int*)&nc) < 0)
      return -1;

    uint c_sz = NELEM(curproc->name);
    uint p_sz = NELEM(curproc->parent->name);
    if (nc < c_sz || np < p_sz)
      return -1;
    for (int i=0;i<c_sz;i++) {
        cbuf[i] = curproc->name[i];
    }
    for (int i=0;i<p_sz;i++) {
        pbuf[i] = curproc->parent->name[i];
    }
    return 0;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}
