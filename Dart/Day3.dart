import 'dart:math' as Math;

void main() {
  // Hàm trong Dart
  // sayHello(); // Gọi hàm
  // greet("Alice");
  // print(add(3, 3));
  // saySomething("Chào"); // Chào, bạn!
  // saySomething("Chào", "Alice"); // Chào, Alice!
  // introduce(name: "Alice", age: 25);
  // introduce(name: "Bob"); // Mặc định age = 18
  // // Lập trình hướng đối tượng (OOP) trong Dart
  // OOPClass();
  // OOPGetterSetter();
  // OOPInheritance();
  BaiTap1();
  BaiTap2();
  BaiTap3();
  BaiTap4();
}

// I. Hàm trong Dart
// 1. Khai báo hàm cơ bản
void sayHello() {
  print("Xin chào, Dart!");
}

// 2. Hàm có tham số
void greet(String name) {
  print("Xin chào, $name!");
}

// 3. Hàm có giá trị trả về
int add(int a, int b) {
  return a + b;
}

// 4. Tham số mặc định
void saySomething(String message, [String name = "bạn"]) {
  print("$message, $name!");
}

// 5. Tham số đặt tên
void introduce({required String name, int age = 18}) {
  print("Tên: $name, Tuổi: $age");
}

// II. Lập trình hướng đối tượng (OOP) trong Dart
// 1. Khai báo lớp (class) và tạo đối tượng
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Phương thức
  void introduce() {
    print("Tôi tên là $name, $age tuổi.");
  }
}

void OOPClass() {
  var person1 = Person("Alice", 25);
  person1.introduce();
}

// 2. Getter & Setter
class Car {
  String _brand; // Private (dấu _ trước tên biến)

  Car(this._brand);

  // Getter
  String get brand => _brand;

  // Setter
  set brand(String newBrand) {
    _brand = newBrand;
  }
}

void OOPGetterSetter() {
  var car = Car("Toyota");
  print(car.brand); // Toyota

  car.brand = "Honda";
  print(car.brand); // Honda
}

// 3.  Kế thừa (Inheritance)
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("Animal sound...");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name sủa gâu gâu!");
  }
}

void OOPInheritance() {
  var myDog = Dog("Rex");
  myDog.makeSound(); // Rex sủa gâu gâu!
}

// 4. Lớp trừu tượng (Abstract Class)
abstract class Shape {
  void draw(); // Abstract method
}

class Circle extends Shape {
  @override
  void draw() {
    print("Vẽ hình tròn");
  }
}

void OOPAbstractClass() {
  var myCircle = Circle();
  myCircle.draw(); // Vẽ hình tròn
}

// III. List, Set, Map trong Dart.
// 1. List
void LearnList() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers); // [1, 2, 3, 4, 5]

  var names = ["Alice", "Bob", "Charlie"];
  names.add("David"); // Thêm phần tử
  names.remove("Alice"); // Xóa phần tử
  print(names); // ["Bob", "Charlie", "David"]
}

// Duyệt qua List
void LoopList() {
  List<int> numbers = [10, 20, 30];

  // Sử dụng for thường
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // Sử dụng for-in
  for (var num in numbers) {
    print(num);
  }

  // Sử dụng forEach
  numbers.forEach((num) => print(num));
}

// 2. Set trong Dart (Tập hợp không trùng lặp)
void LearnSet() {
  Set<int> uniqueNumbers = {1, 2, 3, 3, 4};
  print(uniqueNumbers); // {1, 2, 3, 4}

  uniqueNumbers.add(5);
  uniqueNumbers.remove(2);

  print(uniqueNumbers); // {1, 3, 4, 5}
}

// 3. Map trong Dart (Từ điển - Key/Value)
void LearnMap() {
  Map<String, int> studentScores = {"Alice": 90, "Bob": 85, "Charlie": 88};

  print(studentScores["Alice"]); // 90

  studentScores["David"] = 95; // Thêm phần tử
  studentScores.remove("Bob"); // Xóa phần tử

  print(studentScores);
}

// IV. Static properties & methods trong Dart
// Static Properties
class MathHelper {
  static double pi = 3.1415;
}

void StaticProperties() {
  print(MathHelper.pi); // 3.1415
}

// Static Methods
class MathHelperMethods {
  static double square(double number) {
    return number * number;
  }
}

void StaticMethods() {
  print(MathHelperMethods.square(5)); // 25.0
}

// Bài tập
// Viết một hàm kiểm tra số nguyên tố.

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= Math.sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void BaiTap1() {
  print(isPrime(2)); // true
  print(isPrime(10)); // false
}

// Tạo lớp Student có thuộc tính name, age, và phương thức introduce().
class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void introduce() {
    print("Tôi tên là $name, $age tu��i.");
  }
}

void BaiTap2() {
  var student = Student("Alice", 25);
  student.introduce();
  student = Student("Bob", 20);
  student.introduce();
}

// Viết lớp Vehicle có thuộc tính brand, speed. Tạo lớp Car kế thừa Vehicle và thêm phương thức honk().
class Vehicle {
  String brand;
  double speed;
  Vehicle(this.brand, this.speed);
}

class Car2 extends Vehicle {
  Car2(String brand, double speed) : super(brand, speed);
  void honk() {
    print("$brand!");
  }
}

void BaiTap3() {
  var myCar = Car2("Toyota", 120);
  myCar.honk();
}
// Viết chương trình quản lý danh sách Book với các thuộc tính title, author, year.

class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);
  String getInfo() {
    return "Tên sách: $title, Tác giả: $author, Năm xuất bản: $year";
  }

  void updateInfo(String newTitle, String newAuthor, int newYear) {
    title = newTitle;
    author = newAuthor;
    year = newYear;
  }

  static List<Book> books = [];
  static void addBook(Book book) {
    books.add(book);
  }

  static void removeBook(Book book) {
    books.remove(book);
  }

  static void displayAllBooks() {
    for (var book in books) {
      print(book.getInfo());
    }
  }

  static void searchByAuthor(String author) {
    List<Book> foundBooks = [];
    for (var book in books) {
      if (book.author == author) {
        foundBooks.add(book);
      }
    }
    if (foundBooks.isEmpty) {
      print("Không tìm thấy sách nào của tác giả $author.");
    } else {
      print("Sách của tác giả $author:");
      for (var book in foundBooks) {
        print(book.getInfo());
      }
    }
  }
}

void BaiTap4() {
  Book.addBook(Book("To Kill a Mockingbird", "Harper Lee", 1960));
  Book.addBook(Book("1984", "George Orwell", 1949));
  Book.addBook(Book("The Great Gatsby", "F. Scott Fitzgerald", 1925));
  Book.displayAllBooks();
  Book.searchByAuthor("Harper Lee");
  Book.removeBook(
    Book.books.firstWhere((book) => book.title == "To Kill a Mockingbird"),
  );
  Book.displayAllBooks();
  Book.searchByAuthor("Harper Lee");
}

// Tạo List chứa tên các món ăn, thêm và xóa một phần tử.
void ListEx() {
  List<String> foods = ["Pizza", "Burger", "Fried Chicken", "Spaghetti"];
  foods.add("Lasagna");
  print(foods); // [Pizza, Burger, Fried Chicken, Spaghetti, Lasagna]
  foods.removeAt(2);
  print(foods); // [Pizza, Burger, Spaghetti, Lasagna]
}

// Tạo Set chứa các số nguyên, thử thêm số trùng lặp.
void SetEx() {
  Set<int> numbers = {1, 2, 3, 4, 4, 5};
  print(numbers); // {1, 2, 3, 4, 5}
  numbers.add(6);
  print(numbers); // {1, 2, 3, 4, 5, 6}
}

// Tạo Map lưu thông tin nhân viên (id, name, salary).
void MapEx() {
  // Dùng Map thông thường
  Map<int, String> employees = {1: "Alice", 2: "Bob", 3: "Charlie", 4: "David"};
  print(employees[2]); // Bob
  employees[5] = "Emily";
  print(employees); // {1: Alice, 2: Bob, 3: Charlie, 4: David, 5: Emily}
  employees.remove(1);
  print(employees); // {2: Bob, 3: Charlie, 4: David, 5: Emily}

  // Dùng danh sách chứa nhiều nhân viên
  List<Map<String, dynamic>> employees2 = [
    {"id": 101, "name": "Alice", "salary": 5000},
    {"id": 102, "name": "Bob", "salary": 6000},
    {"id": 103, "name": "Charlie", "salary": 5500},
  ];

  employees2.add({"id": 104, "name": "Charlie", "salary": 5500});
  print(employees2);
}

// Tạo class MathUtils có static method tính bình phương số nguyên.
class MathUtilsMethod {
  static int square(int number) {
    return number * number;
  }
}
void MathUtils(){
  print(MathUtilsMethod.square(5)); // 25
}
