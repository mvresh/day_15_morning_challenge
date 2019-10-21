import "package:test/test.dart";
import 'main.dart';

void main() {
  test("test 1", () {
    expect(posNegSort([-1,2,5,3,1,-7,4]), equals([-1, 1, 2, 3, 4, -7, 5]));
  });



  test("test 2", () {
    expect(karaca("apple"), equals("1lpp0aca"));
  });}