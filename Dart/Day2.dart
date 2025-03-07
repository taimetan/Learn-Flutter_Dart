void main() {
  KiemTraChanLe();
  TinhTong();
  XuatMua();
  BangCuuChuong5();
}

// I. Biến và kiểu dữ liệu trong Dart
// 1. Khai báo biến
void Khaibaobien() {
  int age = 25; // Số nguyên
  double pi = 3.14; // Số thực
  String name = "Alice"; // Chuỗi ký tự
  bool isFlutterAwesome = true; // Giá trị true/false

  var city = "Hà Nội"; // Dart tự nhận diện kiểu (String)
  dynamic anything = 123; // dynamic có thể đổi kiểu dữ liệu
  anything = "Bây giờ là String"; // Hợp lệ

  print("Tên: $name, Tuổi: $age, Thành phố: $city");
}

// 2. Hằng số (const & final)
void Hangso() {
  const double pi = 3.1415;
  final DateTime now = DateTime.now();

  print("Số Pi: $pi");
  print("Thời gian hiện tại: $now");
}

// II. Biến và kiểu dữ liệu trong Dart
// 1. Toán tử số học
void Toantusohoc() {
  int a = 10;
  int b = 3;
  print(a + b); // 13
  print(a - b); // 7
  print(a * b); // 30
  print(a / b); // 3.333...
  print(a ~/ b); // 3 (Chia lấy nguyên)
  print(a % b); // 1 (Chia lấy dư)
}

// 2. Toán tử logic
void Toantulogical() {
  bool isDartFun = true;
  bool isFlutterHard = false;

  print(isDartFun && isFlutterHard); // false
  print(isDartFun || isFlutterHard); // true
  print(!isDartFun); // false
}

// 3. Toán tử gán
void Toantugan() {
  int x = 5;
  x += 2; // x = x + 2
  x *= 3; // x = x * 3
}

// 4. Toán tử điều kiện
void Toantudieukien() {
  int age = 20;
  String status = (age >= 18) ? "Người lớn" : "Trẻ em";
  print(status); // Người lớn
}

// III.  Câu điều kiện trong Dart
// 1. If - else
void IfElse() {
  int number = 10;
  if (number > 0) {
    print("Số dương");
  } else if (number < 0) {
    print("Số âm");
  } else {
    print("Số 0");
  }
}

// 2. Switch - case
void SwitchCase() {
  String fruit = "apple";
  switch (fruit) {
    case "banana":
      print("Chuối");
      break;
    case "apple":
      print("Táo");
      break;
    default:
      print("Không biết");
  }
}

// IV. Vòng lặp trong Dart
// 1. Vòng lặp for
void ForLoop() {
  for (int i = 1; i <= 5; i++) {
    print("Lặp lần thứ $i");
  }
}

// 2. Vòng lặp while
void WhileLoop() {
  int i = 0;
  while (i < 3) {
    print("Lần thứ $i");
    i++;
  }
}

// 3. Vòng lặp do-while
void DoWhileLoop() {
  int i = 0;
  do {
    print("Lặp ít nhất 1 lần");
    i++;
  } while (i < 0);
}

// Bài tập DAY2
// 1. Viết chương trình kiểm tra một số chẵn hay lẻ.
void KiemTraChanLe() {
  int number = 10;
  if (number % 2 == 0) {
    print("Số $number là số chẵn");
  } else {
    print("Số $number là số lẻ");
  }
}

// 2. Viết chương trình nhập một số n, in ra tổng từ 1 đến n.
void TinhTong() {
  int n = 10;
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print("Tổng từ 1 đến $n là $sum");
}

// 3. Viết chương trình nhập vào tháng (1-12), xuất ra mùa tương ứng (switch-case).
void XuatMua() {
  int month = 8;
  switch (month) {
    case 1:
    case 2:
    case 3:
      print("Mùa xuân");
      break;
    case 4:
    case 5:
    case 6:
      print("Mùa hè");
      break;
    case 7:
    case 8:
    case 9:
      print("Mùa thu");
      break;
    case 10:
    case 11:
    case 12:
      print("Mùa đông");
      break;
    default:
      print("Tháng không hợp lệ");
  }
}

// 4. In ra bảng cửu chương của số 5 bằng vòng lặp for.
void BangCuuChuong5() {
  for (int i = 1; i <= 10; i++) {
    print("$i x 5 = ${i * 5}");
  }
}

// 5. Viết hàm calculateArea(double width, double height) trả về diện tích hình chữ nhật.
void calculateArea(double width, double height) {
  double area = width * height;
  print("Diện tích hình chữ nhật là: $area");
}

// 6. Viết hàm có tham số mặc định để in lời chào.
void greet1([String name = "World", int age = 18]) {
  print("Hello, $name! Tuổi của bạn là $age");
}

// 7. Viết hàm greet({required String name, int age = 18}) và gọi nó với cả hai cách.
void greet({required String name, int age = 18}) {
  print("Hello, $name! Tuổi của bạn là $age");
}

void main2() {
  greet(name: "hehe");
  greet(name: "Alice", age: 25);
}
