#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"


void kvminfo(void);
int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int sys_sleep(void)
{
    int n;
    uint ticks0;

    if(argint(0, &n) < 0) {
        return -1;
    }

    acquire(&tickslock);

    ticks0 = ticks;

    while(ticks - ticks0 < n){
        if(proc->killed){
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
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}

int
sys_pgpte(void)
{
  uint va;
  pde_t *pgdir = proc->pgdir;

  if(argint(0, (int*)&va) < 0)
    return -1;

  pte_t *pte = getpte(pgdir, (void*)va);
  if(pte == 0)
    return 0;

  return *pte;   // raw PTE
}

int
sys_ugetpid(void)
{
  return proc->pid;
}
int
sys_kpt(void)
{
  kvminfo();   // implement this in vm.c
  return 0;
}

