import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTextoCustomizado extends StatefulWidget {
  final IconData icone;
  final String rotulo;
  final bool segredo;
  final List<TextInputFormatter>? formatoEntrada;

  const CampoTextoCustomizado({
    Key? key,
    required this.icone,
    required this.rotulo,
    this.segredo = false,
    this.formatoEntrada,
  }) : super(key: key);

  @override
  State<CampoTextoCustomizado> createState() => _CampoTextoCustomizadoState();
}

class _CampoTextoCustomizadoState extends State<CampoTextoCustomizado> {
  bool obscuro = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    obscuro = widget.segredo;
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        inputFormatters: widget.formatoEntrada,
        obscureText: obscuro,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icone),
          suffixIcon: widget.segredo
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscuro = !obscuro;
                    });
                  },
                  icon: Icon(
                    obscuro ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          labelText: widget.rotulo,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18)
          )
        ),
      ),
    );
  }
}
