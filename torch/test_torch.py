#from __future__ import print_function

import torch

if __name__ == '__main__':
    x = torch.rand(5, 3)
    print(x)

    print(torch.cuda.is_available())

    print(torch.empty(5, 3))

    print(torch.zeros(5, 3, dtype=torch.long))

    t = torch.tensor([1.2, 2.1])
    print(t)

    print(t.size())

    if torch.cuda.is_available():
        device = torch.device("cuda")
        y = torch.ones_like(x, device=device)
        x = x.to(device)
        z = x + y
        print(z)
        print(z.to("cpu", torch.double))
