import 'package:estacionamentofacilapp/src/models/item_model.dart';
import 'package:flutter/material.dart';

// Tradução de item tile seria bloco de itens
class ItemTile extends StatelessWidget {
  final ItemModel item;

  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.green.shade700,
          elevation: 1,
          shadowColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  heightFactor: 2.5,
                  child: Text(
                    item.NumeroVaga,
                    style: const TextStyle(
                        fontSize: 55, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
