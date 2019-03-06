#include <iostream>

enum class Color { red, white, blue};
auto white = false;

int main()
{
  Color c = Color::white;
  std::cout <<  static_cast<int>(c) << std::endl;
  return 0;
}
