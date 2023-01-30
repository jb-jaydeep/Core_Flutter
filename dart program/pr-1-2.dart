
void main() { 
 int large = 0;
   List <int> l = [10,20,30,40,50];

  l.forEach((element) {

    if(element >large){
      large=element;

    }
  }
  );

  print("Largest number : $large");
}
