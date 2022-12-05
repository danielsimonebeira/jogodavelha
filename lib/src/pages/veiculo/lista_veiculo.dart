import 'package:estacionamentofacilapp/src/pages/veiculo/cadastro_veiculo.dart';
import 'package:estacionamentofacilapp/src/pages/veiculo/components/card_tile.dart';
import 'package:flutter/material.dart';
import 'package:estacionamentofacilapp/src/config/app_data.dart' as appData;

class ListaVeiculo extends StatelessWidget {
  const ListaVeiculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Veículos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) {
                return CardTile(
                  veiculoModel: appData.veiculosItens[index],
                );
              },
              itemCount: appData.veiculosItens.length,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctxt) {
                return CadastroVeiculo();
              },
            ),
          );
        },
        child: const Icon((Icons.add)),
      ),
    );
  }
}
