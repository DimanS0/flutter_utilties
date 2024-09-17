class CollectionsDemo {
  static void demonstrateList() {
    List<String> fruits = ['apple', 'banana', 'orange'];
    fruits.add('grape');
    fruits.remove('banana');
    print('List: $fruits');
    for (var fruit in fruits) {
      print(fruit);
    }
  }

  static void demonstrateSet() {
    Set<int> numbers = {1, 2, 3, 3, 4, 5};
    numbers.add(6);
    numbers.remove(3);
    print('Set: $numbers');
    for (var number in numbers) {
      print(number);
    }
  }

  static void demonstrateMap() {
    Map<String, int> ages = {
      'Alice': 30,
      'Bob': 25,
      'Charlie': 35,
    };
    ages['David'] = 28;
    ages.remove('Bob');
    print('Map: $ages');
    ages.forEach((key, value) {
      print('$key is $value years old');
    });
  }
}