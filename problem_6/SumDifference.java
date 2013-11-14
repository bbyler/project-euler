public class SumDifference {
    public static void main(String[] args) {
        // Could definitely refactor 
        System.out.println(difference(10)); // Returns 2640
        System.out.println(difference(100)); // Returns 25164150
    }

    public static int sum_of_squares(int n) {
        return n*(n + 1)*(2*n + 1)/6;
    }

    public static int square_of_sum(int n) {
        int total = 0;
        for (int i = 1; i <= n; i++){
          total += i;
        }
        return total*total;
    }

    public static int difference(int n) {
        return square_of_sum(n) - sum_of_squares(n);
    }

}
