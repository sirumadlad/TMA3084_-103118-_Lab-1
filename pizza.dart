import 'dart:io';

void main() {
  print('======================================================');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  stdout.write('Please enter your pizza size (small, medium, or large): ');
  String pizzaSize = stdin.readLineSync()!.toLowerCase();

  int price;

  switch (pizzaSize) {
    case 'small':
      price = 5;
      break;
    case 'medium':
      price = 7;
      break;
    case 'large':
      price = 10;
      break;
    default:
      print('Invalid pizza size.');
      return;
  }

  stdout.write('How many pizzas do you want of $pizzaSize? ');
  int quantity = int.parse(stdin.readLineSync()!);

  int totalPayment = price * quantity;

  print('Your Total Payment is: \$$totalPayment');
}
