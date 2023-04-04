import 'package:calculadora_imc_dart/models/console_utils.dart';
import 'package:calculadora_imc_dart/models/pessoa.dart';

void execute(){
  var erro = false;
  do {
    print("\n- Calculadora de IMC -");
    String nome = ConsoleUtils.lerStringComTextoComException("Digite seu nome:      |");
    double peso = ConsoleUtils.lerDoubleComTextoComException("Digite seu peso:      |");
    double altura = ConsoleUtils.lerDoubleComTextoComException("Digite sua altura:    |");

    Pessoa pessoa = Pessoa(nome, peso, altura);
    if(pessoa.calcularIMC() != 0)
    {
      print("----------------------\n\nNome: ${pessoa.getNome()}\nPeso: ${pessoa.getPeso()}\nAltura: ${pessoa.getAltura()}\nIMC: ${pessoa.calcularIMC()}\nClassificação: ${pessoa.classificarIMC()}\n");
    }else{
      erro = true;
    }
  } while (erro);
}