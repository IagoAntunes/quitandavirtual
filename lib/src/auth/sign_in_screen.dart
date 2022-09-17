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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Input Email
                  const CustomTextField(
                    icon: Icons.email,
                    label: 'Email',
                    isSecret: false,
                  ),
                  // Input Senha
                  const CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),
                  SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          onPressed: null,
                          child: const Text(
                            'Entrar',
                            style: TextStyle(fontSize: 18),
                          ))),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: null,
                        child: Text(
                          'Esqueceu a Senha?',
                          style: TextStyle(color: Colors.red),
                        )),
                  )
                ]),
          ),
        )
      ]),
    );
  }
}
