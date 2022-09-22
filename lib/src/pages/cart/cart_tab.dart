import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/config/custom_colors.dart';
import 'package:quitandavirtual/src/services/utils_services.dart';

class CartTab extends StatelessWidget {
  CartTab({super.key});

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho')),
      body: Column(children: [
        Expanded(
            child: Placeholder(
          color: Colors.red,
        )),
        SizedBox(
          height: 20,
        ),
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
            Text(
              'Total Geral',
              style: TextStyle(fontSize: 12),
            ),
            Text(
              utilsServices.priceTocurrency(50.5),
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
        )
      ]),
    );
  }
}
