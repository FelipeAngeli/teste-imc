class Person {
  final double peso;
  final double altura;

  Person({required this.peso, required this.altura});

  double calcularImc() {
    double imc = peso / (altura * altura);
    return double.parse(imc.toStringAsFixed(2));
  }
}
