#import <stdio.h>
#import <Foundation/Foundation.h>
#import <math.h>

int main(void) {
  double N;
  N = 4000000;
  printf('%u', fibonacci_sum(N));
  return 0;
}

double fast_fibonacci(double n) {
  double fib;
  if (n == 0) {
    fib = 0;
  } else if (n == 1 || n == 2) {
      fib = 1;
  } else {
    if (fmod(n, 2) == 0) {
      n = n/2;
      fib = fast_fibonacci(n)*(2*fast_fibonacci(n + 1) - fast_fibonacci(n));
    } else {
      n = (n - 1)/2;
      fib = pow(fast_fibonacci(n + 1), 2) + pow(fast_fibonacci(n), 2);
    }
  }
  return fib;
}

double fibonacci_sum(double N) {
  double sum = 0;
  for (int i = 3; i < N; i++) {
    if (fast_fibonacci(i) >= 4000000) {
      break;
    }
    sum = sum + fast_fibonacci(i);
  }
  return sum;
}
