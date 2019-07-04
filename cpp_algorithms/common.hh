#pragma once

#include <algorithm>
#include <iterator>
#include <iostream>

// Generic print func that applies to all list types
template <typename T>
void print(const T &list)
{
  // Note: This is another approach to getting the type of the element contained in list
  // instead of using T::value_type
  // using T1 = typename std::decay<decltype(*begin(list))>::type;

  std::for_each(std::begin(list), std::end(list),
	       [](const typename T::value_type &k) {
		 std::cout << k << "\t";
	       });
  std::cout << std::endl;
}
