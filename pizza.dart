import 'dart:io';

void main() {
  while (true) {
    print('Pizza Price: Small = 5 USD');
    print('             Medium = 7 USD');
    print('             Large = 10 USD');

    stdout.write('Please enter your pizza size (small, medium, or large): ');
    String pizzaSize = stdin.readLineSync()!.toLowerCase();

    stdout.write('How many pizzas do you want? ');
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

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
        print('Invalid pizza size!');
        continue;
    }

    int totalPayment = price * quantity;

    print('Your Total Payment is: \$$totalPayment');

    stdout.write('Do you want to order again? (yes/no): ');
    String again = stdin.readLineSync()!.toLowerCase();

    if (again == 'no') {
      print('Thank you for your order!');
      break;
    }
  }
}
