// test.c -- adapted for ARM xv6

#include "types.h"
#include "stat.h"
#include "user.h"
#include "mmu.h"

#define N (8 * (1 << 20))   // 8 MB

void print_pt();
void print_kpt();
void ugetpid_test();
void superpg_test();

int
main(int argc, char *argv[])
{
  print_pt();
  ugetpid_test();
  print_kpt();
  superpg_test();
  printf(1, "pttest: all tests succeeded\n");
  exit();
}

char *testname = "";

void
err(char *why)
{
  printf(1, "pttest: %s failed: %s, pid=%d\n", testname, why, getpid());
  exit();
}

void
print_pte(uint va)
{
    uint pte = pgpte((void *) va);   // syscall returns raw entry
    if(pte == 0){
      printf(1, "va 0x%x not mapped\n", va);
      return;
    }

    printf(1, "va 0x%x pte 0x%x pa 0x%x AP=%d\n",
           va, pte, PTE_ADDR(pte), PTE_AP(pte));
}

void
print_pt()
{
  printf(1, "print_pt starting\n");
  for (uint i = 0; i < 10; i++) {
    print_pte(i * PTE_SZ);
  }
  uint top = UADDR_SZ / PTE_SZ;
  for (uint i = top-10; i < top; i++) {
    print_pte(i * PTE_SZ);
  }
  printf(1, "print_pt: OK\n");
}

void
ugetpid_test()
{
  int i;

  printf(1, "ugetpid_test starting\n");
  testname = "ugetpid_test";

  for (i = 0; i < 64; i++) {
    int ret = fork();
    if (ret != 0) {
      wait();
      continue;
    }
    if (getpid() != ugetpid())
      err("mismatched PID");
    exit();
  }
  printf(1, "ugetpid_test: OK\n");
}

void
print_kpt()
{
  printf(1, "print_kpt starting\n");
  kpt(); // syscall to dump kernel PT
  printf(1, "print_kpt: OK\n");
}

void
supercheck(uint s)
{
  uint last_pte = 0;

  for (uint p = s;  p < s + 512 * PTE_SZ; p += PTE_SZ) {
    uint pte = pgpte((void *) p);
    if(pte == 0)
      err("no pte");
    if ((uint) last_pte != 0 && pte != last_pte) {
        err("pte different");
    }
    if((pte & PTE_TYPE) == 0){
      err("pte wrong");
    }
    last_pte = pte;
  }

  for(int i = 0; i < 512; i += PTE_SZ){
    *(int*)(s+i) = i;
  }

  for(int i = 0; i < 512; i += PTE_SZ){
    if(*(int*)(s+i) != i)
      err("wrong value");
  }
}

void
superpg_test()
{
  int pid;

  printf(1, "superpg_test starting\n");
  testname = "superpg_test";

  char *end = sbrk(N);
  if (end == 0 || end == (char*)0xffffffff)
    err("sbrk failed");

  uint s = (uint)end;
  s = (s + (512*PTE_SZ - 1)) & ~(512*PTE_SZ - 1);  // SUPERPGROUNDUP
  supercheck(s);

  if((pid = fork()) < 0) {
    err("fork");
  } else if(pid == 0) {
    supercheck(s);
    exit();
  } else {
    wait();
  }
  printf(1, "superpg_test: OK\n");  
}

