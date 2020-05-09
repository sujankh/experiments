#include <torch/torch.h>
#include <iostream>

int main() {
  torch::Tensor x;
  //std::cout << x << std::endl;


  std::cout << torch::cuda::is_available() << std::endl;

  //std::cout << torch::kCUDA << std::endl;

  torch::Tensor y;

  torch::Tensor z = torch::rand({1,1}, torch::kCUDA);
  for(int i = 0; i < 100; ++i)
    {
      x = torch::rand({1, 100000}, torch::kCUDA);
      y = torch::rand({100000, 1}, torch::kCUDA);
      z = z + torch::matmul(x, y);
      std::cout << z << std::endl;
    }

}
