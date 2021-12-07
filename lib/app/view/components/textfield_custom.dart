import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final Function(String) onChanged;

  const TextFieldCustom({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
      child: TextField(
        onChanged: (value) => onChanged(value),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(),
            labelStyle: const TextStyle(
              fontSize: 25.0,
              color: Colors.blue,
            )),
      ),
    );
  }
}
