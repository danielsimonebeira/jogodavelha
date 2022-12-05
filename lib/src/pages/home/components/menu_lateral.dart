import 'package:estacionamentofacilapp/src/pages/veiculo/lista_veiculo.dart';
import 'package:estacionamentofacilapp/src/pages/veiculo/cadastro_veiculo.dart';
import 'package:flutter/material.dart';

import '../../../config/app_data.dart';
import '../../../config/custom_colors.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 70,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: CustomColors.customSwatchColor,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 37,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      usuarioLogado2.usuario,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Editar Perfil Usuário'),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('Cadastrar Veículo'),
            dense: true,
            onTap: () {
              // TO_DO: Ver a melhor forma
              // MaterialPageRoute(builder: (context) => const CadastroVeiculo());
              Navigator.of(context).push(MaterialPageRoute(builder: (ctxt) {return ListaVeiculo();}));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Termos de uso e politica de privacidade'),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
          ),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
