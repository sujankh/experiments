#include <iostream>

/*
 * __fls: find last set bit in word
 * @word: The word to search
 *
 * Undefined if no set bit exists, so code should check against 0 first.
 */
unsigned long __fls(unsigned long word)
{
	__asm__("bsr %1,%0"
	    : "=r" (word)
	    : "rm" (word));
	return word;
}


int main()
{
    int x = __fls(0xf00UL);
    std::cout << x << std::endl;
    return 0;
}
