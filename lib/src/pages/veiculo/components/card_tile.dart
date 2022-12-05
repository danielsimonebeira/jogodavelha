import 'package:estacionamentofacilapp/src/models/veiculo_model.dart';
import 'package:flutter/material.dart';

class CardTile extends StatefulWidget {
  final VeiculoModel veiculoModel;

  const CardTile({Key? key, required this.veiculoModel}) : super(key: key);

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: ListTile(
        title: Text(
          widget.veiculoModel.placa,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: SizedBox(
          width: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Cor: ${widget.veiculoModel.cor}'),
              Text('Cliente: ${widget.veiculoModel.cliente}'),
              Text('Modelo: ${widget.veiculoModel.modelo}'),
              Text('CPF: ${widget.veiculoModel.cpfCliente}'),
            ],
          ),
        ),
        trailing: SizedBox(
            height: 50,
            width: 70,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.edit),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.restore_from_trash_outlined),
                ),
              ],
            )),
      ),
    );
  }
}
