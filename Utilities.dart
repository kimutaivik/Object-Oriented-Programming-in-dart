// Function to calculate the sum of two numbers
int sum(int a, int b) {
  return a + b;
}

// Program using a for loop to print numbers from 1 to 10
void printNumbers() {
  print("Numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Program using a switch statement to check for different string values
void switchExample(String value) {
  switch (value) {
    case "Dart":
      print("Dart is a programming language.");
      break;
    case "Java":
      print("Java is another programming language.");
      break;
    default:
      print("Unknown language.");
  }
}

// Program using a while loop to print numbers from 20 to 10
void printNumbersReverse() {
  print("Numbers from 20 to 10:");
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Program using an if-else statement to check if a number is even or odd
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}

// Program to find the largest number in a list
int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Program using a try-catch block to catch an exception
void tryCatchExample() {
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print("Result: $result");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}

void main() {
  int result = sum(5, 3);
  print("Sum: $result");

  printNumbers();

  switchExample("Dart");
  switchExample("Java");
  switchExample("Python");

  printNumbersReverse();

  checkEvenOrOdd(7);
  checkEvenOrOdd(10);

  List<int> numbers = [10, 20, 5, 35, 25];
  int largestNumber = findLargestNumber(numbers);
  print("Largest number: $largestNumber");

  tryCatchExample();
}
