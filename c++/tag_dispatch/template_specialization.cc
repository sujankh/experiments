#include <iostream>
#include <type_traits>

void check_validity()
{
    std::cout << "Checking Validity" << std::endl;
}

enum class perform_validation
{
    YES,
    NO
};

//template<PropertyType U = P, typename std::enable_if<P == kPropertyReadWrite, int>::type = 0> T& operator=(const T &i)


// template<perform_validation U, class = typename std::enable_if<U == perform_validation::YES>::type>
// inline void try_check_validity()
// {
//     check_validity();
// }

// template<perform_validation U, typename false>
// inline void try_check_validity()
// {
//     check_validity();
// }


template<perform_validation U, class = typename std::enable_if<U == perform_validation::NO>::type>
inline void try_check_validity()
{
    std::cout << "NO ";
     check_validity();
}


int main()
{
    check_validity();
    
    const perform_validation yes = perform_validation::YES;
    constexpr perform_validation no = perform_validation::NO;
    //try_check_validity<no>();
    try_check_validity<no>();
    //try_check_validity<v>();
    return 0;
}
