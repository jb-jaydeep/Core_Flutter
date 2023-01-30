
import 'dart:_js_helper';

void main() { 
 int large = 0;
   List <int> l = [10,20,30,40,50];
// insert :
   l.add(60);
   print(l);

   l.addAll([70,80,90]);
   print(l);

   l.insert(0, 0);
   print(l);

   l.insertAll(10, [100,110]);
   print(l);

   //update :

   l.replaceRange(1,5 , [11,22,33,44]);
   print(l);

    // delete :

    l.remove(0);
    print(l);

    l.removeAt(1);
    print(l);

    l.removeLast();
    print(l);

    l.removeRange(1, 3);
    print(l);

    l.retainWhere((element) => element==70);
    print(l);
}