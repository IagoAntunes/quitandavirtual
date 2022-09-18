import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/auth/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text.rich(TextSpan(
          style: const TextStyle(fontSize: 30),
          children: [
            TextSpan(
                text: 'Green',
                style: TextStyle(color: CustomColors.customSwatchColor)),
            TextSpan(
                text: 'grocer',
                style: TextStyle(color: CustomColors.customContrastColor))
          ],
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: CustomColors.customSwatchColor,
              ))
        ],
      ),

      //Campo Pesquisa

      //Categorias

      //Grid
    );
  }
}