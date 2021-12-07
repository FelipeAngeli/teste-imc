import 'package:testeimc/app/model/person_model.dart';

class ImcController {
  double _peso = 0;
  double _altura = 0;

  void setPeso(String peso) {
    _peso = double.tryParse(peso) ?? 0;
  }

  void setAltura(String altura) {
    _altura = double.tryParse(altura) ?? 0;
  }

  String imcResult() {
    Person person = Person(altura: _altura, peso: _peso);

    double imc = person.calcularImc();
    String _resultado;

    //rever se o if_else, ficar dentro do controller ou dentro do model

    if (imc <= 17.9) {
      _resultado =
          'Você esta com baixo peso, seu imc é ${imc.toStringAsFixed(1)}';
    } else if (imc >= 18 && imc <= 24.9) {
      _resultado = 'Você está eutrofico, seu imc é ${imc.toStringAsFixed(1)}';
    } else if (imc >= 25 && imc <= 29.9) {
      _resultado =
          'Você está com sobepeso, seu imc é ${imc.toStringAsFixed(1)}';
    } else if (imc >= 30 && imc <= 34.9) {
      _resultado =
          'Você esta com obesidade grau I, seu imc é ${imc.toStringAsFixed(1)}';
    } else if (imc >= 35 && imc <= 39.9) {
      _resultado =
          'Você está com obesidade grau II, seu imc é ${imc.toStringAsFixed(1)}';
    } else {
      _resultado =
          'Você esta com obesidade grau III, seu imc é ${imc.toStringAsFixed(1)}';
    }

    return _resultado;
  }
}
