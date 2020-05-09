#include <iostream>
#include <cstring>
// NOTE that you can kinda see the instantiated template functions using
// clang++ -Xclang -ast-print -fsyntax-only ./overload.cc
// This is only easy to understand for a simple experiment (eg using std headers would mess with the output)

template <typename T>
auto max(const T& a, const T& b)
{
    std::cout << "max T- 2 args -->";
    return a < b ? b : a;
}

const char* max(const char* a, const char* b)
{
    std::cout << "max char -->";
    return strcmp(b, a) > 0 ? b : a;
}

template <typename T>
auto max(const T& a, const T& b, const T& c)
{
    std::cout << "max T- 3 args -->";    
    return max(max(a, b), c);
}


int main()
{   
    std::cout << max(10, 11, 12) << std::endl;

    const char* a = "hello"  ;
    const char* b = "itdshfdfkjdkjfjkdfkjk"  ;
    const char* c = "coke"  ;
    //std::cout << max(a, b, c) << std::endl;
    //const char *max1 = ::max(a, b, c);
    auto max1 = ::max(a, b, c);

    const char* d = "apple"  ;
    const char* e = "ball"  ;
    const char* f = "sdfhks"  ;
    const char* g = "sfjkdf"  ;
    std::cout << ::max(d, e) << std::endl;
    std::cout << ::max(f, g) << std::endl;

    std::cout << max1 << std::endl;
    std::cout << std::endl;
    return 0;
}