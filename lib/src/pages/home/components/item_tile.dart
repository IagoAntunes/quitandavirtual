import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/config/custom_colors.dart';
import 'package:quitandavirtual/src/models/item_model.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          //Imagem
          Expanded(child: Image.asset(item.imgUrl)),
          //Nome
          Text(
            item.itemName,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          //Preço - unidade
          Row(
            children: [
              Text(
                item.price.toString(),
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                '/${item.unit}',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
