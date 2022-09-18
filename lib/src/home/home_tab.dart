import 'package:badges/badges.dart';
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
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                  badgeColor: CustomColors.customContrastColor,
                  badgeContent: const Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: CustomColors.customSwatchColor,
                  )),
            ),
          )
        ],
      ),

      body: Column(children: [
        //Campo Pesquisa

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise Aqui....',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: Icon(
                  Icons.search,
                  size: 21,
                  color: CustomColors.customContrastColor,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none))),
          ),
        )
        //Categorias

        //Grid
      ]),
    );
  }
}
