import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quitandavirtual/src/auth/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(children: [
        const Expanded(
          child: Center(
            child: Text(
              'Cadastro',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ),

        //Form
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
        ),
      ]),
    );
  }
}
