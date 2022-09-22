import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/config/custom_colors.dart';
import 'package:quitandavirtual/src/models/item_model.dart';
import 'package:quitandavirtual/src/pages/common_widgets/quantity_widgets.dart';
import 'package:quitandavirtual/src/services/utils_services.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key, required this.item});

  final ItemModel item;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int cardItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          //Conteudo
          Column(children: [
            //Imagem
            Expanded(
                child: Hero(
                    tag: widget.item.imgUrl,
                    child: Image.asset(widget.item.imgUrl))),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Nome - Quantidade
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.item.itemName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                        ),
                        QuantityWidget(
                          suffixText: widget.item.unit,
                          value: cardItemQuantity,
                          result: (quantity) {
                            setState(() {
                              cardItemQuantity = quantity;
                            });
                          },
                        )
                      ],
                    ),
                    //Price
                    Text(
                      utilsServices.priceTocurrency(widget.item.price),
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor),
                    ),

                    //Description
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SingleChildScrollView(
                            child: Text(
                          widget.item.description,
                          style: const TextStyle(height: 1.5),
                        )),
                      ),
                    ),

                    //Botao
                    SizedBox(
                      height: 55,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {},
                        label: const Text(
                          'Add no carrinho',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
            ))
          ]),

          //Botao Votar
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios))),
          )
        ],
      ),
    );
  }
}
