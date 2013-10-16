package main

import (
  "fmt"
  "math"
  "time"
)

func main() {
  // Finding the sum of even Fibonacci numbers up to 4,000,000
  t0 := time.Now()
  var N float64
  N = 4000000
  fmt.Println(fibonacci_sum(N))
  t1 := time.Now()
  fmt.Println("Finished in", t0.Sub(t1))
}

// FAST FIBONACCI
func fast_fibonacci(n float64) (float64) {
  var fib float64 
  if n == 0 {
    fib = 0
  } else if n == 1 {
    fib = 1
  // One more case below, intended to mitigate stack overflow
  } else if n == 2 {
    fib = 1
  } else {
    if math.Mod(n, 2) == 0 {
      n = n/2
      fib = fast_fibonacci(n)*(2*fast_fibonacci(n + 1) - fast_fibonacci(n))
    } else {
      n = (n - 1)/2
      fib = math.Pow(fast_fibonacci(n + 1), 2) + math.Pow(fast_fibonacci(n), 2)
    }
  }
  return fib
}

func fibonacci_sum(N float64) (float64) {
  var sum, i float64
  for i = 3; i < N; {
    if fast_fibonacci(i) >= 4000000 {
      break
    }
    sum = sum + fast_fibonacci(i)
    i = i + 3
  }
  return sum
}
