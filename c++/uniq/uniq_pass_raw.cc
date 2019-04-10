#include <iostream>
#include <memory>

struct Point
{
  int x,y;
  
  ~Point()
  {
    std::cout << x << "," << y << " destroyed" << "\n";
  }
};

struct Line
{
  void set_p1(Point *p1)
  {
    this->p1 = p1;
  }
  
  Point *p1;
};


/*
Testing passing raw pointers from a unique ptr
- get
- release
*/
int main()
{
  Line l;
  
  {
    std::unique_ptr<Point> pt1(new Point());
    pt1->x = 5; pt1->y= 6;

    //l.set_p1(pt1.get()); // pt1 will still destroy point
    l.set_p1(pt1.release()); // pt1 will give up ownership of point
  }

  std::cout << l.p1->x << "," << l.p1->y << "\n";

  return 0;
}
