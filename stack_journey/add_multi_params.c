/*
  Check what happens when lots of parameters are passed to a function.
  Do they get stored in the rsi, rdi and other registers only? Yeah first 6 integers in registers, the rest in stack
  Or do they get passed through the stack memory?
  Also confirm that rdi always has the first argument (as per the x86 ABI) yes edi, esi ....
 */


int __attribute__ ((noinline)) sum_series(int n1, int n2, int n3, int n4, int n5, int n6, int n7, int n8)
{
  return n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8;
}

int main()
{
  /*
    Gets translated to:
    sub    $0x18,%rsp
    movl   $0x8,0x8(%rsp)
    movl   $0x7,(%rsp)
    mov    $0x1,%edi
    mov    $0x2,%esi
    mov    $0x3,%edx
    mov    $0x4,%ecx
    mov    $0x5,%r8d
    mov    $0x6,%r9d
    callq  0x400500 <sum_series>
   */
  /*
    Observation:
    Base pointer is omitted since we compiled at O2
   */

  int res = sum_series(1, 2, 3, 4, 5, 6, 7, 8);
  return res;
}
