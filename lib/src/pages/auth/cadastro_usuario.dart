import 'package:estacionamentofacilapp/src/config/custom_colors.dart';
import 'package:estacionamentofacilapp/src/pages/auth/components/campo_texto_customizado.dart';
import 'package:flutter/material.dart';

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // ============================
      //  FOMULARIO LOGIN
      // ============================
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor,
        title: const Text(
          'Cadastrar usuário',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  // ============================
                  //  FOMULARIO LOGIN
                  // ============================
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // ============================
                        //  NOME
                        // ============================
                        const CampoTextoCustomizado(
                            icone: Icons.person, rotulo: 'Nome'),

                        // ============================
                        //  LOGIN
                        // ============================
                        const CampoTextoCustomizado(
                            icone: Icons.login, rotulo: 'Login'),

                        // ============================
                        //  SENHA
                        // ============================
                        const CampoTextoCustomizado(
                            icone: Icons.lock, rotulo: 'Senha'),

                        // ============================
                        //  REPITA A SENHA
                        // ============================
                        const CampoTextoCustomizado(
                            icone: Icons.lock, rotulo: 'Confirmar senha'),

                        // ============================
                        //  BOTAO CONFIRMAR
                        // ============================
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)
                                )
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Confirmar',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
