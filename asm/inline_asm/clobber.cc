#include <iostream>

int main()
{
    unsigned long nums[3] = {5, 6, 7};

    __asm__ volatile("incq %0"::"m" (nums[0]):"memory");

    int out = nums[0] + 10;
    std::cout << out << std::endl;
    return 0;
}
