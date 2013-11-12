import java.lang.*;

public class Fibonacci {
    public static void main(String[] args) {
        int N;
        N = 4000000;
        Fibonacci fibonacci = new Fibonacci();
        System.out.println(fibonacci.fibonacci_sum(N));
    }

    // FAST FIBONACCI
    public double fast_fibonacci(double n) {
        double fib;
        if (n == 0) {
            fib = 0;
        } else if (n == 1 || n == 2) {
            fib = 1;
        } else {
            if (n % 2 == 0) {
              n = n/2;
              fib = fast_fibonacci(n)*(2*fast_fibonacci(n + 1) - fast_fibonacci(n));
            } else {
                n = (n - 1)/2;
                fib = Math.pow(fast_fibonacci(n + 1), 2) + Math.pow(fast_fibonacci(n), 2);
            }
        }
        return fib;
    }

    public double fibonacci_sum(float N) {
        double sum = 0;
        for (int i = 3; i < N; i += 3) {
            if (fast_fibonacci(i) >= 4000000) {
              break;
            }
            sum = sum + fast_fibonacci(i);
        }
        return sum;
    }
}
