#include <iostream>
#include <vector>

int num_moves = 0;

struct Test
{
    int x;

    explicit Test(int x_)
    {
        x = x_;
    }

    Test(Test&& other)
    {
        num_moves++;
        x = std::move(other.x);
    }
};

int main()
{
    std::vector<Test> v;
    v.reserve(100000);

    for(int i = 0; i < 100000; ++i)
    {
        v.push_back(Test{i});
    }


    std::cout << num_moves << std::endl;
    return 0;
}