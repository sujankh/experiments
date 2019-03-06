#include <iostream>

void set(int **x, int value)
{
    int *k = new int(value);
    std::cout << "k = " << static_cast<void*>(k) << std::endl;
    *x = k;
}

int main()
{
    int *i;
    set(&i, 5);
    std::cout << *i << std::endl;
    std::cout << "i = " << static_cast<void*>(i) << std::endl;
    return 0;
}
