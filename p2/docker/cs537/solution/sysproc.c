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

    // fetch arguments from stack
    // argptr checks the buf lies in user address space
    if (argint(2, (int*)&np) < 0 ||
        argint(3, (int*)&nc) < 0 ||
        argptr(0, &pbuf, np) < 0 ||
        argptr(1, &cbuf, nc) < 0)
      return -1;

    // check for null pointers
    if (pbuf == (char*)0 || cbuf == (char*)0)
      return -1;

    // check for empty buffer lengths
    if (np <= 0 || nc <= 0)
      return -1;

    // 1. if pbuf < len of parent proc name
    // copy as many chars from the parent proc name as pbuf allows
    // else, copy as much as the proc name buffer allows
    uint p_sz = NELEM(curproc->parent->name);
    if (np < p_sz) {
        safestrcpy(pbuf, curproc->parent->name, np);
    }
    else {
        safestrcpy(pbuf, curproc->parent->name, p_sz);
    }

    // 2. if cbuf < len of proc name
    // copy as many chars from the proc name as cbuf allows
    // else, copy as much as the proc name buffer allows
    uint c_sz = NELEM(curproc->name);
    if (nc < c_sz) {
        safestrcpy(cbuf, curproc->name, nc);
    }
    else {
        safestrcpy(cbuf, curproc->name, c_sz);
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
