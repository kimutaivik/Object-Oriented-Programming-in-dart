import 'dart:io';

abstract class Animal {
  void makeSound();
}

class LivingThing {
  String name;

  LivingThing(this.name);

  void introduce() {
    print("Hello, I am $name.");
  }
}

class Dog extends LivingThing implements Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void makeSound() {
    print("$name the $breed barks: Woof woof!");
  }
}

class FileReader {
  List<String> readLinesFromFile(String filename) {
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();
    return lines;
  }
}

void main() {
  Dog dog = Dog("Rex", "Golden Retriever");

  dog.makeSound(); // Output: Rex the Golden Retriever barks: Woof woof!

  // Demonstrate loop
  for (int i = 0; i < 3; i++) {
    print("Counting... $i");
  }

  // Read data from a file and initialize an instance
  FileReader reader = FileReader();
  List<String> lines = reader.readLinesFromFile("data.txt");
  if (lines.isNotEmpty) {
    String name = lines[0];
    String breed = lines[1];
    Dog dogFromFile = Dog(name, breed);
    dogFromFile.introduce();
    dogFromFile.makeSound();
  } else {
    print("No data found in the file.");
  }
}
