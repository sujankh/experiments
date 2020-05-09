#include <iostream>
#include <string>
#include <type_traits>

// Default template arguments
// Note that not having T=std::string will error
// if string_func is called without any args
//template <typename T> // ERROR
template <typename T = std::string>
void string_func(T = "val")
{
    std::cout << "func called" << std::endl;
}

// Auto deduced return type
template <typename T1, typename T2>
auto max(T1 a, T2 b)
{
    return a < b ? b : a;    
}

// Learning std::common_type
// Note that in c++11 you'd use `typename std::common_type<T1, T2>::type` instead
template <typename T1, typename T2>
std::common_type_t<T1, T2> max_common_type(T1 a, T2 b)
{
    return a < b ? b : a;    
}

int main()
{
    string_func();
    string_func(5);

    auto x = ::max(14, 15.5);

    //NOTE: This causes the compiler to print an error with the type of x that was auto deduced in the template func
    //std::cout << x.foo << std::endl;    
    std::cout << x << std::endl;

    std::cout << max_common_type(15.5, 11) << std::endl;
    return 0;
}