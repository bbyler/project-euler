public class DivisorNum {
    public static void main(String[] args) {
        // Pass in last integer in range (20 --> 1..20)
        System.out.println(divisor(10)); // Outputs 2520
        System.out.println(divisor(20)); // Outputs 232792560  
    }

    public static int divisor(int endInt) {
        int[] range = new int[endInt - 2];
        for (int i = 0; i < endInt - 2; i++){
          range[i] = i + 2;
        }
        // range = [2, 3, ..., endInt], has length endInt - 1
        int N = 2;
        for (int i = 0; i < range.length; i++){
            if (N % range[i] != 0) {
                N++;
                i = 0;
            }
        }
        return N;
    }
}
