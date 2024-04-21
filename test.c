void main () {
  int a = 10, b = 3, c = 43, d =1;
  a = b*c; //a = 129
  b = a*c; //b = 430
  a = d*a; //a = 10
  while(a<b){
    a = a+10;
  }
  //a = 439
  a = d*b;//a = 3
}