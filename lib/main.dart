import 'package:flutter/material.dart';

void main() {
  print("print statement...........................................");
  print("Hello World!");

  // This is a comment...............................................

  print("\nVariables.................................................");
  // 1st method : datatype var_name = value
  int firstValue = 5;
  // 2nd method : var var_name = value
  var secondValue = 7;
  // Sum of firstValue & secondValue
  print("Sum of $firstValue and $secondValue = ${firstValue + secondValue}");

  print("\nData Types................................................");
  int value1 = 5;
  print("Data type of value1 = $value1 is : ${value1.runtimeType}");
  double value2 = 5.25;
  print("Data type of value2 = $value2 is : ${value2.runtimeType}");
  String value3 = "Sample Text";
  print("Data type of value3 = $value3 is : ${value3.runtimeType}");
  bool value4 = true;
  print("Data type of value4 = $value4 is : ${value4.runtimeType}");
  // dynamic dataType
  dynamic value5 = "TextABC";
  String value6 = "TextABC";
  // print(value5 + 3); // will give runtime error as datatype of 'value5' is not known during compile time
  // value5.length is not accessible bcz 'value5' datatype is not known at compile time
  print("Length of '$value6' text is : ${value6.length}");

  print("\nMulti-line Strings........................................");
  String value7 = '''This is multi line string and
  this is second line
  this is third line''';
  print(value7);

  print("\nif-else statements........................................");
  int age = 20;
  if (age >= 21) {
    print("Age($age) is greater than 21.");
  } else if (age >= 18) {
    print("Age($age) is less than 21 and greater than 18.");
  } else {
    print("Age($age) is less than 18.");
  }

  print("\nTernary operator..........................................");
  // (Condition ? cond_true_case : cond_false_case);
  int age1 = 16;
  print(age1 >= 18 ? "Greater than 18" : "Less than 18");

  print("\nSwitch statement..........................................");
  int age2 = 18;
  switch (age2) {
    case 10:
      print("Age is 10");
    case 18:
      print("Age is 18");
    default:
      print("Age is neither 10 nor 18");
  }

  print("\nfor loop..................................................");
  for (int x = 0; x < 5; x++) {
    print("Hello World ${x + 1}");
  }

  print("\nwhile loop................................................");
  int y = 5;
  while (y < 10) {
    print("Hello World ${y + 1}");
    y++;
  }

  print("\ndo-while loop.............................................");
  int z = 10;
  do {
    print("Hello World ${z + 1}");
    z++;
  } while (z < 15);

  print("\nFunctions.................................................");
  String name = "Mr. X";
  printName(name);

  print("\nPositional arguments......................................");
  // parameters must be passed in the same order as in function definition
  printPositionalArguments("Mr. X", 16, 'Hello!');
  print("Named arguments...........................................");
  // parameters can be passed in any order
  printNamedArguments(age2: 12, greeting2: "Hi!", name2: "Mr. Y");

  print("\nClasses...................................................");
  Cookie cookie = Cookie("Rectangle", 25);
  print("Shape of cookie = ${cookie.shape}");
  print("Size of cookie = ${cookie.size} cm");
  cookie.baking();

  print("\nGetters in Class..........................................");
  print("Value of height in getter =  ${cookie.height}");
  print("Setters in Class..........................................");
  cookie.setHeight = 20;
  print("Updated value of height after setters = ${cookie.height}");

  print("\nStatic Variables and functions............................");
  // can be used without creating an instance of the class
  print("Greeting from static variable: ${StaticFunction1.greeting01}");
  print("SomeValue from static function: ${StaticFunction1.giveMeSomeValue()}");

  print("\nInheritance...............................................");
  Car car = Car();
  print("isEngineWorking: ${car.isEngineWorking}");
  // isEngineWorking not defined in Car class still acccesible bcz it inherits Vehicle class where it is defined
  car.printNoOfWheels();

  print("\nImplement keyword.........................................");
  // forces you to redefine all parent class properties & methods which is implemented
  SampleClass sampleClass = SampleClass();
  sampleClass.extendClassMethod();
  ImplementClass implementClass = ImplementClass();
  implementClass.implementClassMethod();
  // override annotation: overrides value of methods and properties of parent class
  sampleClass.implementClassMethod();

  print("\nPolymorphism..............................................");
  // defined as the ability of an object to take many forms
  // same sound() function giving different results when pointed to different classes' object
  Animal myAnimal = Animal();
  myAnimal.sound(); // Animal is making sound
  myAnimal = Dog();
  myAnimal.sound(); // Dog barks
  myAnimal = Cat();
  myAnimal.sound(); // Cat meows

  print('\nAbstraction...............................................');
  // It is the process of hiding internal data only exposing required features & functionalities
  // It is useful for defining blueprints for other classes
  // Shape shape = Shape(); -> not possible as abstract class can't be instantiated
  Rectangle rectangle = Rectangle();
  Triangle triangle = Triangle();
  // displayInfo implementaion is not known as it is defined in abstract class
  // but it can be used providing only neccessary info hiding internal data
  rectangle.drawShape();
  print("There are ${rectangle.noOfCorners} corners in a rectangle");
  rectangle.displayInfo();
  triangle.drawShape();
  print("There are ${triangle.noOfCorners} corners in a triangle");
  triangle.displayInfo();

  print("\nMixin.....................................................");
  // It doesn't create parent-child relation like inheritance
  // used to reuse class' methods & properties without using inheritance
  // indirect way for using multiple inheritance which is not allowed in dart
  // single class can extend two or more mixin using 'with' keyword
  Bird bird = Bird("Pigeon");
  bird.chirp();
  bird.fly();
  bird.walk();
  Human human = Human("Mr. X");
  human.speak();
  human.walk();
  // human.fly(); // can't use fly as Human class doesn't have CanFly mixin

  print("\nLists.....................................................");
  // defined as an ordered collection of objects.
  List<String> fruits = ["Apple", "Banana", "Orange"];
  print("List of fruits : $fruits");
  print("Second value in the list : ${fruits[1]}");
  // returns the value at specified index
  print("First value in the list : ${fruits.first}");
  // returns the first element of the list
  print("Last value in the list : ${fruits.last}");
  // returns the last element of the list
  fruits[1] = "Kiwi";
  print("Updated list after changing second value : $fruits");
  // updates the value at specified index
  fruits.add("Grape");
  print("Updated list after adding a new value : $fruits");
  // adds element to the end of the list
  fruits.addAll(["Mango", "Peach"]);
  print("Updated list after adding multiple values : $fruits");
  // adds all given elements to the end of the list
  fruits.insert(1, "Blueberry");
  print("Updated list after adding a new value at index 1 : $fruits");
  // adds given value at specified index in the list
  fruits.remove("Kiwi");
  print("Updated list after removing 'Kiwi' from the list : $fruits");
  // removes the specified value from the list
  fruits.removeAt(1);
  print("Updated list after removing second element from the list : $fruits");
  // removes the value at specified index
  var lastValue = fruits.removeLast();
  print("Last value removed from the list : $lastValue");
  print("Updated list after removing last element from the list : $fruits");
  // removes and returns the last value
  fruits.removeWhere((fr) => fr.contains("o"));
  print("Updated list after removing values having 'o' : $fruits");
  // removes all values which satisfy the conditon (it is case-sensitive)
  fruits.clear();
  print("Updated list after clearing the list : $fruits");
  // removes all elements from the list
  List<int> numbers = [3, 1, 4, 1, 5];
  print("List of numbers : $numbers");
  numbers.sort();
  print("Sorted list of numbers : $numbers");
  // sorts the list in ascending order (elements must be comparable)
  print("Reversed list of numbers : ${numbers.reversed.toList()}");
  // returns reversed iterable (can be converted to list using toList())
  print("Does numbers list contains number 4? : ${numbers.contains(4)}");
  // check if list contains a specific element
  print("Sublist from numbers list $numbers : ${numbers.sublist(1, 4)}");
  // returns a new list containing element from specified range (end index is exclusive)
  List<int> doubledNumbers = numbers.map((n) => n * 2).toList();
  print("Doubled numbers list using map() func : $doubledNumbers");
  // transforms each element & returns a new iterable (use toList() to convert)
  List<int> evenNumbers = numbers.where((n1) => n1 % 2 == 0).toList();
  print("Even numbers list using where func : $evenNumbers");
  // filters elements based on a condition & returns new iterable (use toList() to convert)

  print("\nSets......................................................");
  // defined as collection of unique, unordered items.
  // can't contain duplicate items
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};
  print("Set A : $setA");
  print("Set B : $setB");
  Set<int> combinedSet = setA.union(setB);
  print("Union of setA & setB : $combinedSet");
  // combines all unique elements from two sets into a new single set
  Set<int> commonElements = setA.intersection(setB);
  print("Intersection of setA & setB : $commonElements");
  // returns a new set containing elements common to both sets
  Set<int> differenceSet = setA.difference(setB);
  print("Difference of setA & setB : $differenceSet");
  // returns a new set containing all elements from 1st set (excluding which are also present in 2nd set)

  print("\nMaps......................................................");
  // defined as the dynamic collection that stores data in key-value pairs
  Map<String, int> scores = {"Alice": 95, "Bob": 88, "Charlie": 92};
  print("Map of scores : $scores");
  print("All entries of map are : ${scores.entries}");
  // returns an iterable of all key-vaue pairs in the map
  print("Score of Alice : ${scores['Alice']}");
  // returns value of specified key
  scores['Bob'] = 76;
  print("Updated map after modifying a value : $scores");
  scores['Pat'] = 83;
  print("Updated map after adding a value : $scores");
  // adds new entry if key is not present otherwise updates the value of specified key
  scores.addAll({"Jack": 61, "John": 89});
  print("Updated map after adding multiple values : $scores");
  // adds or updates multiple values in the map
  var removedValue = scores.remove('Pat');
  print("Value removed from map : $removedValue");
  print("Updated map after removing a value : $scores");
  // removes & returns removed value
  scores.clear();
  print("Updated map after clearing the map : $scores");
  // removes all entries from the map
  Map<String, int> inventory = {"Apples": 10, "Bananas": 5};
  print("Map of inventory : $inventory");
  print("Does map contains key 'Apple'? : ${inventory.containsKey('Apples')}");
  print("Does map contains value 5? : ${inventory.containsValue(5)}");
  // check if map contains the specified key/value
  print("Is inventory map empty? : ${inventory.isEmpty}");
  print("Is inventory map not empty? : ${inventory.isNotEmpty}");
  // check if map is empty/non-empty
  print("Length of inventory map : ${inventory.length}");
  // returns the number of key-value pairs
  print("All keys of inventory map : ${inventory.keys}");
  print("All values of inventory map : ${inventory.values}");
  // returns all keys/values present in the map

  print("\nEnums.....................................................");
  // used to define a set of values for a variable
  // it's like a dropdown for a variable value (no chance of invalid values)
  print("What's your job role : ${JobRole.SoftwareEngineer.name}");

  print("\nException Handling........................................");
  // used to ensure that a program terminated gracefully rather than crashing
  try {
    // code that can throw error
    int result = (10 ~/ 0);
  } on FormatException {
    // used to specify any known exception (either built-in or custom exception)
    print("Error: Format Exception");
  } catch (e) {
    // handle any other exceptions
    print("Exception: $e");
  } finally {
    // this block always executes
    print("finally block executed");
  }

  runApp(const MyApp());
}

// functions.........................................................
void printName(String name) {
  print("My name is $name");
}

// Positional arguments..............................................
void printPositionalArguments(String name1, int age1, String greeting1) {
  print("Name: $name1, Age: $age1, Greeting: $greeting1");
}

// Named arguments...................................................
void printNamedArguments({
  required String name2,
  required int age2,
  required String greeting2,
}) {
  print("Name: $name2, Age: $age2, Greeting: $greeting2");
}

// Classes...........................................................
class Cookie {
  String shape = "Circle";
  double size = 15.2;

  // constructor of Cookie class : called as soon as object of this class is created.
  Cookie(String shape, double size) {
    print("Cookie class constructor called...");
    this.shape = shape; // updates value from 'Circle' to 'Rect'
    this.size = size; // updates value from 15.2 to 25
    // above 2 lines updates the value to what is given while creating object of this class.
  }

  int _height = 15; // private variable (accessible only in this file)

  // getters.........................................................
  int get height => _height; // read-only value

  // setters.........................................................
  set setHeight(int h) {
    _height = h;
  }

  // functions inside a class are called methods.
  void baking() {
    print("Baking has started...");
  }
}

// static variables and functions....................................
class StaticFunction1 {
  // static variable: can be used without creating an object of the class
  static String greeting01 = "Hello! How are you?";

  // static functions: can be used without creating an object of the class
  static int giveMeSomeValue() {
    return 10;
  }
}

// Inheritance.......................................................
class Vehicle {
  int speed = 10;
  bool isEngineWorking = true;

  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;

  void printNoOfWheels() {
    print("There are $noOfWheels wheels in a car.");
  }
}

// Implement keyword.................................................
// forces you to redefine all parent class properties & methods which is implemented
// but it is not necessary to redefine properties & methods of extended class
// that's the difference between extends keyword and implements keyword
class ExtendClass {
  int extendClassProperty = 1;
  void extendClassMethod() {
    print("Extended class method called");
  }
}

class ImplementClass {
  int implementClassProperty = 2;
  void implementClassMethod() {
    print("Implement class method called");
  }
}

class SampleClass extends ExtendClass implements ImplementClass {
  // redefining all ImplementClass properties & methods bcz it is implemented
  // override annotation: overrides value of methods and properties of parent class
  @override
  int implementClassProperty = 3;

  @override
  void implementClassMethod() {
    print("Implement class method updated in SampleClass");
  }
}

// Polymorphism......................................................
// defined as the ability of an object to take many forms
class Animal {
  void sound() {
    print("Animal is making sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

// Abstraction.......................................................
// It is the process of hiding internal data only exposing required features & functionalities
// It is useful for defining blueprints for other classes
// abstract properties & method: No implementation in abstract class
// but must be initialized in inherited classes
abstract class Shape {
  int noOfCorners = 0;

  // abstract method: no implementation
  void drawShape();

  // concrete method: with implementation
  void displayInfo() {
    print("This is a shape");
  }
}

class Rectangle extends Shape {
  @override
  int noOfCorners = 4;

  @override
  void drawShape() {
    print("Drawing a rectangle...");
  }
}

class Triangle extends Shape {
  @override
  int noOfCorners = 3;

  @override
  void drawShape() {
    print("Drawing a triangle...");
  }
}

// Mixin.............................................................
// It doesn't create parent-child relation like inheritance
// used to reuse class' methods & properties without using inheritance
// indirect way for using multiple inheritance which is not allowed in dart
// single class can extend two or more mixin using 'with' keyword
mixin CanFly {
  void fly() {
    print("I can fly");
  }
}

mixin CanWalk {
  void walk() {
    print("I can walk");
  }
}

class Bird with CanFly, CanWalk {
  String birdName;
  Bird(this.birdName);

  void chirp() {
    print("$birdName chirps");
  }
}

class Human with CanWalk {
  String humanName;
  Human(this.humanName);

  void speak() {
    print("$humanName speaks");
  }
}

// Enums.............................................................
// used to define a set of values for a variable
// it's like a dropdown for a variable value (no chance of invalid values)
enum JobRole { SoftwareEngineer, Finance, HR, Manager, CEO, Staff }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
