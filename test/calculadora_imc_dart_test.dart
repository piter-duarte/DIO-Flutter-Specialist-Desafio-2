import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular IMC', () {
    Pessoa pessoa = Pessoa("José", 20, 1.6);
    expect(pessoa.calcularIMC(), 7.812499999999998);
  });

  test('Calcular IMC com altura zerada', () {
    Pessoa pessoa = Pessoa("José", 20, 0);
    expect(pessoa.calcularIMC(), 0);
  });

  test('Calcular IMC com peso zerado', () {
    Pessoa pessoa = Pessoa("José", 0, 1.60);
    expect(pessoa.calcularIMC(), 0);
  });

  test('Classificar IMC < 16', () {
    Pessoa pessoa = Pessoa("José", 40.5, 1.6);
    print(pessoa.calcularIMC()); //15.82
    expect(pessoa.classificarIMC(), "Magreza grave");
  });

  test('Classificar IMC < 17', () {
    Pessoa pessoa = Pessoa("José", 42, 1.6);
    print(pessoa.calcularIMC()); //16.40
    expect(pessoa.classificarIMC(), "Magreza moderada");
  });

  test('Classificar IMC < 18.5', () {
    Pessoa pessoa = Pessoa("José", 44, 1.6);
    print(pessoa.calcularIMC()); //17.18
    expect(pessoa.classificarIMC(), "Magreza leve");
  });

  test('Classificar IMC < 25', () {
    Pessoa pessoa = Pessoa("José", 48, 1.6);
    print(pessoa.calcularIMC()); //18.74
    expect(pessoa.classificarIMC(), "Saudável");
  });

  test('Classificar IMC < 30', () {
    Pessoa pessoa = Pessoa("José", 70, 1.6);
    print(pessoa.calcularIMC()); //27.34
    expect(pessoa.classificarIMC(), "Sobrepeso");
  });

  test('Classificar IMC < 35', () {
    Pessoa pessoa = Pessoa("José", 77, 1.6);
    print(pessoa.calcularIMC()); //30.07
    expect(pessoa.classificarIMC(), "Obesidade Grau I");
  });
  
  test('Classificar IMC < 40', () {
    Pessoa pessoa = Pessoa("José", 90, 1.6);
    print(pessoa.calcularIMC()); //35.15
    expect(pessoa.classificarIMC(), "Obesidade Grau II (severa)");
  });

  test('Classificar IMC >= 40', () {
    Pessoa pessoa = Pessoa("José", 103, 1.6);
    print(pessoa.calcularIMC()); //40.23
    expect(pessoa.classificarIMC(), "Obesidade Grau III (mórbida)");
  });
}
