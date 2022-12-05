import 'package:estacionamentofacilapp/src/config/custom_colors.dart';
import 'package:estacionamentofacilapp/src/pages/auth/components/campo_texto_customizado.dart';
import 'package:flutter/material.dart';

import '../home/tela_home.dart';
import 'cadastro_usuario.dart';

class Autenticacao extends StatelessWidget {
  const Autenticacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor,
        centerTitle: true,
      ),
      // ============================
      //  IMAGEM LOGO
      // ============================
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('assets/logo/Estacionamento.jpg'),
                  Text(
                    'Estacionamento Fácil',
                    style: TextStyle(
                        color: CustomColors.customSwatchColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
              // ============================
              //  FOMULARIO LOGIN
              // ============================
              Container(
                // color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // ============================
                    //  USUARIO
                    // ============================
                    const CampoTextoCustomizado(
                      icone: Icons.login,
                      rotulo: 'Usuário',
                    ),
                    // ============================
                    //  SENHA
                    // ============================
                    const CampoTextoCustomizado(
                      icone: Icons.lock,
                      rotulo: 'Senha',
                      segredo: true,
                    ),
                    // ============================
                    //  BOTAO LINK ESQUECEU A SENHA
                    // ============================
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueci minha senha/login',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ============================
                    //  BOTAO LOGAR
                    // ============================
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (c) {
                            return const TelaHome();
                          },),);
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    // ============================
                    //  DIVISORIA
                    // ============================
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ============================
                    //  BOTAO NOVO USUARIO
                    // ============================
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return const CadastroUsuario();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Criar Conta',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
