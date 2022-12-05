import 'package:estacionamentofacilapp/src/config/custom_colors.dart';
import 'package:estacionamentofacilapp/src/models/usuario_model.dart';
import 'package:estacionamentofacilapp/src/pages/home/components/item_tile.dart';
import 'package:estacionamentofacilapp/src/pages/home/components/menu_lateral.dart';
import 'package:flutter/material.dart';

import 'package:estacionamentofacilapp/src/config/app_data.dart' as appData;

import '../../config/app_data.dart';


class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: const MenuLateral(),
      // ============================
      //  APP BAR
      // ============================
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor,
        leading: Builder(
          builder: (BuildContext ctxt) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(ctxt).openDrawer();
                  },
              icon: const Icon(
                  Icons.account_circle,
              ),
              iconSize: 40,
            );

          },

        ),
        // TO-DO: Como irá trazer o usuário
        title: Text('Olá, ${usuarioLogado2.usuario}'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {

            },
          ),
        ],
      ),

      // ============================
      //  GRID
      // ============================
      body: Column(
        children: [
          // ============================
          //  LEGENDA
          // ============================
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.green.shade800,
              padding: const EdgeInsets.only(bottom: 5, top: 5),
              child: Row(
                children: const [
                  Text(
                    'Legenda:',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Card(
                      elevation: 0,
                      color: Colors.green,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  Text(
                    'Vaga Livre',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Card(
                      elevation: 0,
                      color: Colors.red,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  Text(
                    'Vaga em Manutenção',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Card(
                      elevation: 0,
                      color: Colors.yellowAccent,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  Text(
                    'Vaga em Ocupada',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: appData.items.length,
              itemBuilder: (_, index) {
                return ItemTile(item: appData.items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
