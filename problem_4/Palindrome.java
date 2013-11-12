public class Palindrome {
    public static void main(String[] args) {
        int product, max_product, product_reverse;
        max_product = 0;
        for (int i = 100; i < 1000; i++) {
            for (int j = 100; j < 1000; j++){
                product = i*j;
                product_reverse = reverse(product);
                if (product == product_reverse){
                    max_product = product;
                }
            }
        }  
        System.out.println(max_product);
    }

    public static int reverse(int n) {
        int reverse;
        reverse = 0;
        while (n != 0) {
            reverse = reverse * 10;
            reverse = reverse + n % 10;
            n = n/10;
        }
        return reverse;
    }
}
