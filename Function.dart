import 'dart:io';

void main() {
  // Prompt the user for an operation
  stdout.write('Choose an operation (add, subtract, multiply, divide, String Length, First number in a List): ');
  String operation = stdin.readLineSync()?.trim().toLowerCase() ?? '';

  // Perform the operation based on user input
  switch (operation) {
    case 'add':
    case 'subtract':
    case 'multiply':
    case 'divide':
      performArithmeticOperation(operation);
      break;
    case 'String Length':
      // Prompt the user for a string to find its length
      stdout.write('Enter a string to find its length: ');
      String sampleText = stdin.readLineSync() ?? '';
      int textLength = stringLength(sampleText);
      print('Length of the string "$sampleText" is $textLength');
      break;
    case 'First number in a List':
      // Prompt the user for a list of integers to find the first element
      stdout.write('Enter a list of integers separated by space: ');
      String inputList = stdin.readLineSync() ?? '';
      List<int> numbersList = inputList.split(' ').map(int.tryParse).whereType<int>().toList();
      int? firstElement = getFirstElement(numbersList);
      if (firstElement != null) {
        print('First element of the list is $firstElement');
      } else {
        print('Error: List is empty');
      }
      break;
    default:
      print('Invalid operation. Please choose add, subtract, multiply, divide, task5, or task6.');
  }
}

// Perform arithmetic operations
void performArithmeticOperation(String operation) {
  stdout.write('Enter the first number: ');
  String input1 = stdin.readLineSync() ?? '';
  double number1 = double.tryParse(input1) ?? 0.0;

  stdout.write('Enter the second number: ');
  String input2 = stdin.readLineSync() ?? '';
  double number2 = double.tryParse(input2) ?? 0.0;

  switch (operation) {
    case 'add':
      print('Result: ${number1} + ${number2} = ${number1 + number2}');
      break;
    case 'subtract':
      print('Result: ${number1} - ${number2} = ${number1 - number2}');
      break;
    case 'multiply':
      print('Result: ${number1} * ${number2} = ${number1 * number2}');
      break;
    case 'divide':
      if (number2 != 0) {
        print('Result: ${number1} / ${number2} = ${number1 / number2}');
      } else {
        print('Error: Division by zero');
      }
      break;
  }
}

// Task 5: String length
int stringLength(String text) {
  return text.length;
}

// Task 6: Get first element from a list
int? getFirstElement(List<int> list) {
  if (list.isNotEmpty) {
    return list.first;
  } else {
    return null;
  }
}
