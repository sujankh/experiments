int square_add(int a, int b)
{
    int a2, b2;
    a2 = a * a;
    b2 = b * b;
    int sum = a2 + b2;
    return sum;
}


int main()
{
    int a = 5;
    int b = 6;
    int z = square_add(a, b);
    return 0;
}
