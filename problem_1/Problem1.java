import java.lang.*;

public class Problem1 {
    public static void main(String[] args) {
        int N, sum;
        double N1, N2, N3;
        N = 1000;
        N1 = Math.ceil(N/3.0);
        N2 = Math.ceil(N/5.0);
        N3 = Math.ceil(N/15.0);
        sum = 0;
        for (int i = 0; i < N1; i++) {
          sum += 3*i;
        }
        for (int i = 0; i < N2; i++) {
          sum += 5*i;
        }
        // Subtracting double counted numbers (multiples of 15)
        for (int i = 0; i < N3; i++) {
          sum -= 15*i;
        }
        System.out.println(sum);
    }
}
