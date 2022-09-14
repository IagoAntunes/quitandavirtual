import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quitandavirtual/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(children: [
        Expanded(child: Container(color: Colors.greenAccent)),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                color: Colors.white),
            child: Column(children: const [
              // Input Email
              CustomTextField(
                icon: Icons.email,
                label: 'Email',
                isObscure: false,
              ),
              // Input Senha
              CustomTextField(
                icon: Icons.lock,
                label: 'Senha',
                isObscure: true,
              )
            ]),
          ),
        )
      ]),
    );
  }
}
