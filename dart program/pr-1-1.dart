
void main() {
  List a = [1,-1,2,-2,3,-3,4,-4,-5,-6,-7,-8,-9];

  a.forEach((e) {
    if (e < 0) {
      print(e);
    }
  });
}
