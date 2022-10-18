import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/config/custom_colors.dart';
import 'package:quitandavirtual/src/pages/cart/components/cart_tile.dart';
import 'package:quitandavirtual/src/services/utils_services.dart';
import 'package:quitandavirtual/src/config/app_data.dart' as appData;

import '../../models/cart_item_model.dart';

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final UtilsServices utilsServices = UtilsServices();

  void removeItemFromCart(CartItemModel cardItem) {
    setState(() {
      appData.cartItems.remove(cardItem);
    });
  }

  double cartTotalPrice() {
    double total = 0;
    for (var item in appData.cartItems) {
      total += item.totalPrice();
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho')),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
          itemCount: appData.cartItems.length,
          itemBuilder: (_, index) {
            return CartTile(
                cartItem: appData.cartItems[index], remove: removeItemFromCart);
          },
        )),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, blurRadius: 3, spreadRadius: 2)
            ],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Text(
              'Total Geral',
              style: TextStyle(fontSize: 12),
            ),
            Text(
              utilsServices.priceTocurrency(cartTotalPrice()),
              style: TextStyle(
                  fontSize: 23,
                  color: CustomColors.customSwatchColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.customSwatchColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: const Text(
                  'Concluir Pedido',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
