import 'dart:io';
import 'dart:convert';

void main() {
  Pessoa pessoa = Pessoa();
  print('Digite seu nome: ');
  pessoa.nome = stdin.readLineSync(encoding: utf8);
  print('Olá, ${pessoa.nome}! Digite sua altura (em metros): ');
  pessoa.altura = double.parse(stdin.readLineSync(encoding: utf8)!);
  print('Qual o seu peso? (em quilos): ');
  pessoa.peso = double.parse(stdin.readLineSync(encoding: utf8)!);

  double imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  if (imc < 16) {
    print(
        'Você está em estado de magreza grave. Seu imc é ${imc.toStringAsFixed(2)} .');
  } else if (imc >= 16 && imc < 17) {
    print(
        'Você está em estado de magreza moderada. Seu imc é ${imc.toStringAsFixed(2)} .');
  } else if (imc >= 17 && imc < 18.5) {
    print('Em estado de magreza leve. Seu imc é ${imc.toStringAsFixed(2)} .');
  } else if (imc >= 18 && imc < 25) {
    print('Você está saudável. Seu imc é ${imc.toStringAsFixed(2)} .');
  } else if (imc >= 25 && imc < 30) {
    print('Você está sobrepeso. Seu imc é ${imc.toStringAsFixed(2)} ');
  } else if (imc >= 30 && imc < 35) {
    print(
        'Você está com obesidade grau I. Seu imc é ${imc.toStringAsFixed(2)} ');
  } else if (imc >= 35 && imc < 40) {
    print(
        'Você está com obesidade grau II. Seu imc é ${imc.toStringAsFixed(2)} ');
  } else {
    print(
        'Você está com obesidade grau II. Seu imc é ${imc.toStringAsFixed(2)} ');
  }
}

class Pessoa {
  late String? nome;
  late double altura;
  late double peso;
}