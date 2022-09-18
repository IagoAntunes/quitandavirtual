import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/models/item_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Column(children: [
        Expanded(child: Image.asset(item.imgUrl)),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(50)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  offset: Offset(0, 2),
                )
              ]),
        ))
      ]),
    );
  }
}
