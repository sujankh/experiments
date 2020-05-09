#include <iostream>
#include <string>


template <typename T, typename... Tlist>
void print(T first_arg, Tlist... args)
{
    if constexpr (sizeof...(args) > 0)
    {
        std::cout << first_arg << std::endl;
        print(args...);
    }
    else
    {
        std::cout << first_arg << std::endl;
    }
}


template <typename... T>
auto add_one(const T&... args)
{
    print(args + 1 ...);
}


int main()
{
    //print("hello", 1.2, "there");
    add_one(2, 3, 4.4);
    return 0;
}