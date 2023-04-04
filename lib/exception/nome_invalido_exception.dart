class NomeInvalidoException implements Exception {
  String error() => "Nome inválido! Tente novamente...";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}