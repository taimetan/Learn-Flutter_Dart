// 2️⃣ Interface & Abstract Class
// 📌 Abstract Class
// Một class trừu tượng (abstract class) không thể khởi tạo trực tiếp, nó chỉ có thể được kế thừa.
abstract class Shape {
  void draw(); // Abstract method
}

class Circle extends Shape {
  @override
  void draw() {
    print("Vẽ hình tròn");
  }
}

void main1() {
  var myCircle = Circle();
  myCircle.draw(); // Vẽ hình tròn
}

// 📌 Interface trong Dart
// Dart không có từ khóa interface, nhưng mọi class đều có thể đóng vai trò như một interface.
abstract class Animal {
  void makeSound();
}

// Sử dụng như một Interface
class Dog implements Animal {
  @override
  void makeSound() {
    print("Gâu gâu!");
  }
}

void main2() {
  var myDog = Dog();
  myDog.makeSound(); // Gâu gâu!
}

// 3️⃣ Mixins trong Dart
// Mixin giúp chia sẻ code giữa nhiều class mà không cần kế thừa.
mixin Flyable {
  void fly() {
    print("Bay lên trời!");
  }
}

class Bird with Flyable {}

void main3() {
  var parrot = Bird();
  parrot.fly(); // Bay lên trời!
}
// 🔹 Dùng with để thêm mixin vào class.
// 🔹 Mixins không thể có constructor.

// 4️⃣ Future & async-await để xử lý bất đồng bộ
// Dart hỗ trợ bất đồng bộ với Future và async-await.
// 📌 Future cơ bản
Future<String> fetchData1() {
  return Future.delayed(Duration(seconds: 2), () => "Dữ liệu đã tải");
}

void main4() {
  fetchData1().then((data) => print(data));
}

// 🔹 Future.delayed() mô phỏng một tác vụ chạy nền mất 2 giây.
// 🔹 .then() được gọi khi Future hoàn tất.
// 📌 async - await
Future<String> fetchData2() async {
  await Future.delayed(Duration(seconds: 2));
  return "Dữ liệu đã tải";
}

void main5() async {
  print("Đang tải...");
  var data = await fetchData2();
  print(data);
}
//🔹 await chỉ dùng được trong hàm async.

// 5️⃣ Streams và cách sử dụng trong Dart
// Stream giúp xử lý nhiều giá trị bất đồng bộ theo thời gian (giống WebSocket).
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main6() async {
  await for (var value in countStream()) {
    print(value);
  }
}
// 🔹 async* + yield để tạo Stream.
// 🔹 await for để lắng nghe dữ liệu từ Stream.

// Bài tập
// Tạo class Vehicle, class Car kế thừa Vehicle.
class Vehicle {
  String brand;

  Vehicle(this.brand);

  void start() {
    print("$brand is starting...");
  }
}

class Car extends Vehicle {
  int seats;

  Car(String brand, this.seats) : super(brand);

  void honk() {
    print("$brand is honking! Beep Beep!");
  }
}

void main() {
  Car myCar = Car("Toyota", 4);
  myCar.start(); // Toyota is starting...
  myCar.honk(); // Toyota is honking! Beep Beep!
}

// Viết class Shape là abstract class, có class Rectangle kế thừa.
abstract class Shape1 {
  double getArea();
}

class Rectangle1 extends Shape1 {
  double width, height;

  Rectangle1(this.width, this.height);

  @override
  double getArea() => width * height;
}
// Viết mixin Logger để ghi log khi gọi hàm.
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class Service with Logger {
  void fetchData() {
    log("Fetching data...");
  }
}


// Viết một Future mô phỏng tải dữ liệu mất 3 giây.
// Viết một Stream đếm từ 1-10.
