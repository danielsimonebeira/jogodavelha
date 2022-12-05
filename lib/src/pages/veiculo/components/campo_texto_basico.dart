import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTextBasico extends StatefulWidget {

  final String nomeCampo;
  final List<TextInputFormatter>? formato;

  const CampoTextBasico({
    Key? key,
    required this.nomeCampo,
    this.formato
  }) : super(key: key);

  @override
  State<CampoTextBasico> createState() => _CampoTextBasicoState();
}

class _CampoTextBasicoState extends State<CampoTextBasico> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 12),
      child: TextFormField(
        inputFormatters: widget.formato,
        decoration: InputDecoration(
            isDense: true,
            labelText: widget.nomeCampo,
            border: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(18)
              borderRadius: BorderRadius.all(
                  Radius.circular(18)
              ),
            )
        ),
      ),
    );
  }
}
