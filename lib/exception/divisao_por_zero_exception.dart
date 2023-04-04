class DivisaoPorZeroException implements Exception {
  String error() => "Impossível dividir por zero! Tente novamente...";

  @override
  String toString() {
    return "DivisaoPorZeroException: ${error()}";
  }
}