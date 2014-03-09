#import <stdio.h>
#import <math.h> 
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  // NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int N, sum;
  double N1, N2, N3;
  N = 1000;
  N1 = ceil(N/3.0);
  N2 = ceil(N/5.0);
  N3 = ceil(N/15.0);
  sum = 0;
  for (int i = 0; i < N1; i++) {
    sum += 3*i;
  }
  for (int i = 0; i < N2; i++) {
    sum += 5*i;
  }
  for (int i = 0; i < N3; i++) {
    sum -= 15*i;
  } 
  printf("%u", sum);
  // [pool drain];
  return 0;
}
