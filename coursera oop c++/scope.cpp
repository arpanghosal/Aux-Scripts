#include <iostream>
int main() {
  int x = 2;
  std::cout << "Outer scope value of x (should be 2): " << x << std::endl;
  
  if (true) {
    x = 3;
    std::cout << "Inner scope vaue of x (should be 3): " << x << std::endl;
  }

  std::cout << "Outer scope value of x (should be 2): " << x << std::endl;

  return 0;
}
