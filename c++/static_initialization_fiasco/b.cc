#include <iostream>

int initialize_x()
{
    std::cout << "Initialize X" << std::endl;
    return 42;
}

int external_x = initialize_x();
