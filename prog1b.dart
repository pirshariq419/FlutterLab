import 'dart:io';

void main()

{

var firstName = "John";
var lastName = "Doe";
print("Full name is $firstName $lastName");

print("Enter the first number:");
int num1 = int.parse(stdin.readLineSync()!);

print("Enter the second number:");
int num2 = int.parse(stdin.readLineSync()!);

int sum = num1 + num2;
int diff = num1 - num2;
int mul = num1 * num2;
double div = num1 / num2; 

print("The sum is $sum");
print("The diff is $diff");
print("The mul is $mul");
print("The div is $div");

print("Enter number:");
int? number = int.parse(stdin.readLineSync()!);
print("The entered number is ${number}");

}

