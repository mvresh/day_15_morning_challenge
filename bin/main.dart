// Challenge 1
// Write failing test cases for next two challenges

// Challenge 2
// Write a function that sorts the positive numbers in ascending order,
// and keeps the negative numbers untouched.
// Example: posNegSort([6, 3, -2, 5, -8, 2, -2]) ➞ [2, 3, -2, 5, -8, 6, -2]
List posNegSort(List numbers) {

  List positive = numbers.where((number)=> number>0).toList();

  //List positive = [];
//  for (int i = 0; i < numbers.length; i++) {
//    if (numbers[i] > 0) {
//      positive.add(numbers[i]);
//    }
//  }

  positive.sort();

  int positiveIndex = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 0) {
      numbers[i] = positive[positiveIndex];
      positiveIndex++;
    }
  }
  return numbers;
}

// Challenge 3
// The Karaca's Encryption Algorithm
// Make a function that encrypts a given input with these steps:
// Input: "apple"
// Step 1: Reverse the input: "elppa"
//
//  Step 2: Replace all vowels using the following chart:
// a => 0
// e => 1
// o => 2
// u => 3
// i => 4
// "1lpp0"
// Step 3: Add "aca" to the end of the word: "1lpp0aca"
// Output: "1lpp0aca"

String karaca(String string) {
  List reversed = string.split('').reversed.toList();
  Map vowels = {'a':'0','e':'1','o':'2','u':'3','i':'4'};

  for(int i=0;i<reversed.length;i++){
    if(vowels.containsKey(reversed[i])){
      reversed[i] = vowels[reversed[i]];
    }
  }

  return (reversed.join() + 'aca');
}

main() {
  print(posNegSort([-1, 2, 5, 3, 1, -7, 4]));
  print(karaca("apple"));
}
