#include <iostream>


int main()
{
    unsigned long a = 100;
    unsigned long b = 200;
    unsigned long sum;

    //This has an implicit side effect of updating sum
    __asm__("addq %1, %2": "=r" (sum): "r" (a), "0" (b));

    // This just adds a.b but does not update sum
    //__asm__("addq %1, %0": : "r" (a), "r" (b));

    std::cout << sum << std::endl;
    return 0;
}
