#include <cstddef>
#include <string>
#include<iostream>
#include <vector>

void PrintStackTop();

int exponentiate(int x, int n) {
    if(n == 0) {
        return 1;
    } else {
        return x * exponentiate(x, n - 1);
    }
}


int exp1(int x, int n, int r) {
    if(n == 0){
        return r;
    } else {
        return exp1(x,n-1,r*x);
    }
}

int go(int x, int n){
    return exp1(x,n,1);
}
template<typename T, int N>
std::vector<T> createVector(){
    return std::vector<T>(N);
}

float badBase(float n){
    static int iter = 0;
    //PrintStackTop();
     std::cout << iter++ << std::endl;
    if(n <= 1){
        return 1.0;
    } else {
        return n * badBase(n / 2);
    }
}

size_t st;

// print the stack top
void PrintStackTop()
{
    int stack_top;
    if(st == 0)
        st = (size_t) &stack_top;
    std::cout  << (st - (size_t) &stack_top) << std::endl;
}

int gcd(int a, int b){
    std::cout << "gcd(" << a << ", " << b << ")" << std::endl;
    if(b == 0){
        return a;
    } else {
        return gcd(b, a % b);
    }
}

float doMath(float n){
    std::cout << "doMath(" << n << ")" << std::endl;
    if(n == 1){
        return 1.0;
    } else {
        return n * doMath(n / 2);
    }
}

int factorial(int n){
    if(n == 0){
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}


int main() {

    //float z = doMath(6);
    //std::cout << z << std::endl;

    int x {};
    x = gcd(203,201);
    std::cout << x << std::endl;


    return 0;
}
