void setup() {
  
//infinite while loop:  
  //int l = 0;
  //while (l < 10) {
  //  println("infinite while loop!");
  //  l--;
  //}

//infinite for loop:
  //for ( int m = 10; m >=10; m= 10 * 1){
  //  println("infinite for loop!");
  //}
  
//while loops:  
  int i = 1;
  while ( i <= 512){
    println("while loop i is " + i);
    i = i * 2;
  }
  
  int j = 100;
  while (j >= -80){
    println("while loop j is " + j);
    j = j - 20;
  }
  
//for loop:  
  for (int k = 0; k < 46; k= k + 5) {
    println("for loop k is " + k);
  }
  
}