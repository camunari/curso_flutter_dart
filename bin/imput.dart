import 'dart:io';

void main(){
  stdout.write('Qual é o seu nome?');
  print('\n');

  String? name = stdin.readLineSync();
  print('\n');

  stdout.write('O nome digitado é: $name');
  print('\n');

  stdout.write('Qual a sua idade?');
  print('\n');

  int age = int.parse(stdin.readLineSync()!);

  stdout.write('O nome digitado é: $name, e a idade digitada é: $age anos');
  print('\n');

  // no terminal rodar o comando "dart bin/imput.dart" para possibilitar respostas
}