import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc_dart/exception/nome_invalido_exception.dart';
import 'package:calculadora_imc_dart/exception/numero_invalido_exception.dart';

class ConsoleUtils {
  
  static String lerString(){
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto){
    print(texto);
    return lerString();
  }

  static String lerStringComTextoComException (String texto){
    var value = lerStringComTexto(texto);

    try {
       if(value.trim() == ""){
        throw NomeInvalidoException();
      }
    } on NomeInvalidoException {
      do {
      print(NomeInvalidoException());
      value = ConsoleUtils.lerStringComTexto("Digite seu nome:      |");
      } while (value.trim() == "");  
    }
    return value;
  }

  static double? lerDouble(){
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

    static double? lerDoubleComTextoComSaida(String texto, String valorSaida){
    do {
      try {
        var value = lerStringComTexto(texto);
        if(value == valorSaida){
        return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
    
  }

  static double? lerDoubleComTexto(String texto){
    print(texto);
    return lerDouble();
  }

  static double lerDoubleComTextoComException(String texto){
    double? value;
  
    do {
    value = ConsoleUtils.lerDoubleComTexto(texto);
      try {
        if(value == null)
        {
          throw NumeroInvalidoException();
        }
      } on NumeroInvalidoException {
        print(NumeroInvalidoException());
      }
    } while (value == null);
    return value;
  }
}