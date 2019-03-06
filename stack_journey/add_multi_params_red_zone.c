/*
  Check if leaf functions use the red zone: 128 bytes reserved for leaf function so that stack does not need to be decremented
 */


// With clang O2, this function was not completely inlined but was jmp ed instead of called
int __attribute__ ((noinline)) sum_series(int n1, int n2, int n3, int n4)
{
  // Ideally these locals should be put in the stack but rsp should not be decremented for this function
  int s1 = n1 + n2;
  int s2 = n3 + n4;
  int sum = s1 + s2;
  return sum;
}

int main()
{
  int res = sum_series(1, 2, 3, 4);
  return res;
}
