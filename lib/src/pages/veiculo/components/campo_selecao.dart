import 'package:flutter/material.dart';

class CampoSelecao extends StatelessWidget {
  final String nomeTexto;

  CampoSelecao({Key? key, required this.nomeTexto}) : super(key: key);

  List<DropdownMenuItem<String>> menuItem = [
    const DropdownMenuItem(
      value: 'Sedan',
      child: Text('Sedan'),
    ),
    const DropdownMenuItem(
      value: 'Hatch',
      child: Text('Hatch'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 12),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: nomeTexto,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),

          // fillColor: Colors.greenAccent,
        ),
        items: menuItem.toList(),
        onChanged: (String? newValue) {},
      ),
    );
  }
}
