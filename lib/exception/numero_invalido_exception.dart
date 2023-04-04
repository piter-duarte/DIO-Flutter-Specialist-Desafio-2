class NumeroInvalidoException implements Exception {
  String error() => "Número inválido! Tente novamente...";

  @override
  String toString() {
    return "NúmeroInvalidoException: ${error()}";
  }
}