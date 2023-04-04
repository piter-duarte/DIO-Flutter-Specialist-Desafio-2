import 'dart:math';
import 'package:calculadora_imc_dart/exception/divisao_por_zero_exception.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  String getNome(){
    return _nome;
  }

  void setNome(String nome){
    _nome = nome;
  }

  double getPeso(){
    return _peso;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getAltura(){
    return _altura;
  }

  void setAltura(double altura){
    _altura = altura;
  }

  double calcularIMC(){
    try {
      if(_peso == 0)
      {
         print("Peso zerado! Tente novamente...");
         return 0;
      }
      if(_altura == 0)
      {
        throw DivisaoPorZeroException();  
      }
    } on DivisaoPorZeroException {
      print(DivisaoPorZeroException());
      return 0;
    }
    return _peso / pow(_altura, 2);
  }

  String classificarIMC(){
    if(calcularIMC() < 16){
      return "Magreza grave";
    }else if (calcularIMC() < 17){
      return "Magreza moderada";
    }else if (calcularIMC() < 18.5){
      return "Magreza leve";
    }else if (calcularIMC() < 25){
      return "Saudável";
    }else if (calcularIMC() < 30){
      return "Sobrepeso";
    }else if (calcularIMC() < 35){
      return "Obesidade Grau I";
    }else if (calcularIMC() < 40){
      return "Obesidade Grau II (severa)";
    }else {
      return "Obesidade Grau III (mórbida)";
    }
  }
}