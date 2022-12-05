import 'package:estacionamentofacilapp/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

class ListaVeiculo extends StatelessWidget {
  const ListaVeiculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Veículos'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 120,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: InkWell(
                  splashColor: Colors.yellowAccent,
                  onTap: () {
                    debugPrint('Botão apertado');
                  },
                  child: Column(
                    children: [
                      Row(
                        children: const [

                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('TVT-0000'),
                          ),

                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [Text('TESTE')],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon((Icons.add)),
      ),
    );
  }
}
