import 'package:flutter_test/flutter_test.dart';
import 'package:testeimc/app/model/person_model.dart';

void main() {
  test('IMC experado 24.84', () {
    final person = Person(peso: 85, altura: 1.85);
    expect(person.calcularImc(), 24.84);
  });
}
