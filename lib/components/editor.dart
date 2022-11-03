import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone;

  Editor({
    required this.controlador,
    this.rotulo = "",
    this.dica = "",
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = const TextStyle(fontSize: 24.0);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: textStyle,
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
