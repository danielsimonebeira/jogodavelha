import 'package:estacionamentofacilapp/src/config/custom_colors.dart';
import 'package:estacionamentofacilapp/src/pages/veiculo/components/campo_selecao.dart';
import 'package:estacionamentofacilapp/src/pages/veiculo/components/campo_texto_basico.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroVeiculo extends StatelessWidget {
  CadastroVeiculo({Key? key}) : super(key: key);

  final cpfMascara = MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {'#': RegExp(r'[0-9]')});
  final placaMascara = MaskTextInputFormatter(
      mask: '###-####', filter: {'#': RegExp(r'[a-zA-Z0-9]')});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor,
        title: const Text('Cadastrar Veiculo'),
      ),
      body: Column(
        children: [
          // =====================
          // FORMLARIO EM CARD
          // =====================
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 22
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: SizedBox(
                    height: 400,
                    width: size.width,
                    child: Column(
                      children: [
                        // =====================
                        // CAMPO TEXTO CLIENTE
                        // =====================
                        const CampoTextBasico(nomeCampo: 'Cliente'),
                        // =====================
                        // CAMPO TEXTO CPF
                        // =====================
                        CampoTextBasico(
                          nomeCampo: 'CPF',
                          formato: [cpfMascara],
                        ),
                        // =====================
                        // CAMPO TEXTO PLACA
                        // =====================
                        CampoTextBasico(
                          nomeCampo: 'Placa',
                          formato: [placaMascara],
                        ),
                        // =====================
                        // CAMPO TEXTO COR
                        // =====================
                        const CampoTextBasico(nomeCampo: 'Cor'),
                        // =====================
                        // CAMPO SELECIONA MODELO
                        // =====================
                        CampoSelecao(
                          nomeTexto: 'Modelo',
                        ),

                      ],
                    ),
                  ),
                ),
                // =====================
                // BOTAO CONFIRMAR
                // =====================
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      child: const Text(
                        "Confirmar",
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}
