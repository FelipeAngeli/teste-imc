import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testeimc/app/controller/imc_controller.dart';

import 'components/textfield_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //controladores, pega as informações digitadas

  String _resultado = '';

  ImcController imcController = ImcController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
              child: Text(
                'Insira as informações',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            TextFieldCustom(label: 'Peso ', onChanged: imcController.setPeso),
            TextFieldCustom(
                label: 'Altura ', onChanged: imcController.setAltura),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
              child: Text(
                _resultado,
                style: const TextStyle(fontSize: 25.0),
              ),
            ),
            Container(
              height: 50.0,
              width: 250.0,
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _resultado = imcController.imcResult();
                  });
                },
                child: const Text(
                  'Calcular IMC',
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
