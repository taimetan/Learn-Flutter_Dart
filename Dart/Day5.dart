// 1️⃣ Try-Catch-Finally để xử lý lỗi
// Trong Dart, bạn có thể sử dụng try-catch-finally để xử lý lỗi và ngăn chặn chương trình bị crash.

// 📌 Ví dụ try-catch
void TryCatch() {
  try {
    int result = 10 ~/ 0; // Lỗi chia cho 0
    print(result);
  } catch (e) {
    print("Lỗi xảy ra: $e");
  }
}

// 🔹 ~/ là phép chia lấy phần nguyên.
// 🔹 catch (e) bắt lỗi và lưu vào biến e.
// 📌 Thêm Stack Trace để debug
void TryCatch2() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e, stacktrace) {
    print("Lỗi: $e");
    print("Chi tiết lỗi: $stacktrace");
  }
}

// 📌 Finally - Luôn được thực thi
void TryCatchFinally() {
  try {
    print("Thực hiện phép chia...");
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Lỗi xảy ra: $e");
  } finally {
    print("Luôn được thực thi!");
  }
}

// 🔹 finally luôn chạy dù có lỗi hay không.
// 2️⃣ Lambda Functions (Hàm ẩn danh)
// Lambda là hàm ngắn gọn có thể viết trên một dòng.
// 📌 Ví dụ Lambda
int add(int a, int b) => a + b;

void LambdaFunction() {
  print(add(3, 5)); // 8
}
// 🔹 Không cần {} và return, chỉ cần =>.
// 3️⃣ Higher-Order Functions (Hàm bậc cao)
// Hàm bậc cao là hàm nhận một hàm khác làm tham số hoặc trả về một hàm khác.

// 📌 Truyền hàm làm tham số
void executeFunction(Function action) {
  action();
}

void sayHello() {
  print("Xin chào!");
}

void HigherFunction() {
  executeFunction(sayHello);
}

// 📌 Trả về một hàm
Function multiplyBy(int x) {
  return (int y) => x * y;
}

void HigherFunction2() {
  var doubleValue = multiplyBy(2);
  print(doubleValue(5)); // 10
}
// 🔹 multiplyBy(2) trả về một hàm nhân với 2.

// 🔥 Bài tập thực hành
// Viết hàm chia hai số, xử lý lỗi khi chia cho 0 bằng try-catch.
double divide(int a, int b) {
  try {
    return a / b;
  } catch (e) {
    print("Lỗi: Không thể chia cho 0!");
    return double.nan; // Trả về NaN nếu có lỗi
  }
}

void TryCatchEx() {
  print(divide(10, 2)); // 5.0
  print(divide(10, 0)); // Lỗi: Không thể chia cho 0!
}

// Viết một hàm lambda để nhân hai số.
var multiply = (int a, int b) => a * b;

void LambdaFunctionEx() {
  print(multiply(4, 5)); // 20
}
// 💡 Hàm lambda là một cách viết gọn của hàm thông thường.

// Viết một hàm bậc cao nhận một hàm khác làm tham số.
void applyFunction(int a, int b, int Function(int, int) operation) {
  print("Kết quả: ${operation(a, b)}");
}

void HigherFunctionEx() {
  applyFunction(3, 4, (x, y) => x + y); // 7
  applyFunction(6, 2, (x, y) => x * y); // 12
}
// 💡 Hàm bậc cao (Higher-order function) là hàm nhận một hàm khác làm tham số.

// Viết một extension cho int để kiểm tra số chẵn/lẻ.
extension NumberExtension on int {
  bool get isEvenNumber => this % 2 == 0;
  bool get isOddNumber => !isEvenNumber;
}

void NumberExtensionEx() {
  print(4.isEvenNumber); // true
  print(7.isOddNumber); // true
}

// Viết một extension cho List để tính tổng các phần tử.
extension ListSum on List<int> {
  int get sum => this.fold(0, (prev, element) => prev + element);
}

void ListSumEx() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers.sum); // 15
}
