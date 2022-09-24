import 'dart:io';

void main() {
  print("Enter Your Height");
  int height = int.parse(stdin.readLineSync());
  print("Enter Your Weight");
  int weight = int.parse(stdin.readLineSync());
  double BMI = weight / ((height / 100) * (height / 100));
  String result = BMI.toStringAsFixed(1);
  print("Result: $result");
  if (BMI < 20) {
    print("your body is not ideal. Take More eat and be healhty");
  } else if (BMI >= 20 && BMI <= 25) {
    print("your body is ideal. Good Job!");
  } else {
    print("your body is too fat");
  }
}
