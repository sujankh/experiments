#include <iostream>
// NOTE that you can kinda see the instantiated template functions using
// clang++ -Xclang -ast-print -fsyntax-only ./overload.cc
// This is only easy to understand for a simple experiment (eg using std headers would mess with the output)

template <typename T>
auto max(T a, T b)
{
    return a < b ? b : a;
}

template <typename T>
T* max(T *a, T *b)
{
    return *a < *b ? b : a;
}

int main()
{
    auto x = max(5, 6);

    int a = 100, b =20;    
    auto y = max(&a, &b);

    std::cout << x << "\t" << *y << std::endl;
    return 0;
}