#include <memory>
#include <iostream>
#include <string>
#include <vector>

class object_t{
public:
  template <typename T>
  object_t(T x) : self_(std::make_shared<model<T>>(std::move(x)))
  {
  }

  void draw(std::ostream& out, std::string msg) const
  {
    self_->draw_(out, msg);
  }
private:
  struct concept_t {
    virtual ~concept_t() = default;
    virtual void draw_(std::ostream&, std::string msg) const = 0;
  };

  template <typename T>
  struct model : concept_t
  {
    model(T x) : data_(std::move(x)) {}
    void draw_(std::ostream& out, std::string msg) const
    {
      data_.draw(out, msg);
    }
    T data_;
  };

  std::shared_ptr<const concept_t> self_;
};


struct child1
{
  void draw(std::ostream &out, std::string msg) const
  {
    out << "Hello from child1" << std::endl;
    out << msg;
  }
};

struct child2
{
  void draw(std::ostream &out, std::string msg) const
  {
    out << "Hello from child2" << std::endl;
    out << msg;
  }
};

struct child3
{
  void draw(std::ostream &out, std::string msg) const
  {
    out << "Hello from child3" << std::endl;
  }
};



int main(int argc, char** argv)
{
  std::vector<object_t> objs;
  objs.emplace_back(child1());
  objs.emplace_back(child2());

  std::cout << argc << std::endl;
  if(argc == 1)
    {
      objs.emplace_back(child3());
    }

  for(const auto &o : objs)
    o.draw(std::cout, "Hellos from object_t\n");

  return 0;
}
