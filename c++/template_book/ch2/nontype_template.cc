#include <iostream>

template <auto N>
class Message
{
    public:
    using val_type = decltype(N);

    void print()
    {
        std::cout << "Message = " << N << std::endl;
    }

    val_type get_N()
    {
        return N;
    }

    auto get_N_auto()
    {
        return N;
    }
    
};

// This allows instantiation with a refernce
template<decltype(auto) N>
class Message_ref
{
    public:
    void print()
    {
        std::cout << "Message = " << N << std::endl;
    }
};

int main()
{
    Message<42> m;
    m.print();

    std::cout << "This is the message: " << m.get_N() << std::endl;
    std::cout << "This is the message with auto ret: " << m.get_N_auto() << std::endl;

    int x = 55;
    //Message<(x)> m_x;

    Message_ref<(x)> m_x;
    m_x.print();
    return 0;
}