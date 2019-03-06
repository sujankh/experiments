// Local Variables:
// rmsbolt-command: "gcc -O0"
// rmsbolt-disassemble: nil
// End:

int add(int a, int b)
{
  return a + b;
}

int main()
{
  int a = 5;
  int b = 6;
  int c = add(a, b);

  return 0;
}
