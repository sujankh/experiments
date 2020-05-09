#include <iostream>
#include <string>

template <typename T>
void print(const T& arg)
{
    std::cout << arg << std::endl;
}

template <typename T, typename... Tlist>
void print(T first_arg, Tlist... args)
{
    print(first_arg);
    print(args...);
}

template <typename T>
struct AddSpace
{
    // Note that the ctor accepts types by reference and stores a reference to them
    // This constructor will fail if val_ is not a T& val on T=array types
    // However having T val in ctor will work if val_ is T

    //AddSpace(T val) : val_(val)
    AddSpace(const T& val) : val_(val)
    {        
    }

    friend std::ostream& operator<<(std::ostream& os, AddSpace<T> arg)
    {
        return os << arg.val_ << " ";
    }

    const T& val_;
    //T val_;
};

template <auto C, typename T>
struct AddPrintChar
{
    AddPrintChar(const T& val) : val_(val)
    {        
    }

    friend std::ostream& operator<<(std::ostream& os, AddPrintChar<C, T> arg)
    {
        return os << arg.val_ << C;
    }

    const T& val_;
    //T val_;
};

template <typename T>
using AddSpaceT = AddPrintChar<' ', T>;

template <typename... T>
void print_fold(const T&... args)
{
    // All three approaches

    //1. Just use default AddSpace. Note the template class deduces the argument of args
    (std::cout << ... << AddSpace(args)) << std::endl;

    //2. Using AddPrintChar which is a general version of AddSpace. In class template, auto deduction of type
    // won't work if at least one type is specified
    (std::cout << ... << AddPrintChar<' ', T>(args)) << std::endl;

    // 3. This is using the alias to AddPrintChar which adds a ' ' to make life easier
    (std::cout << ... << AddSpaceT<T>(args)) << std::endl;
}

template <typename... T>
auto sum_fold(const T&... args)
{
    (std::cout << ... << AddPrintChar<'+', T>(args)) << std::endl;    
    //Fold operators are nice
    return (0 + ... + args);
}

int main()
{
    print("Hello", 1, "there", 'c', 4.5);

    print_fold("yo", "yo", std::string("there"), 1.2222, 3.14, 35u);

    std::cout << sum_fold(1, 2, 3, 4.5, 6) << std::endl;

    return 0;
}