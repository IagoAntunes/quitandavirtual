import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quitandavirtual/src/pages/common_widgets/custom_text_field.dart';
import 'package:quitandavirtual/src/config/custom_colors.dart';
import 'package:quitandavirtual/src/pages/auth/sign_up_screen.dart';
import 'package:quitandavirtual/src/pages/base/base_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(children: [
            //Banner
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title
                Text.rich(
                    TextSpan(style: const TextStyle(fontSize: 40), children: [
                  const TextSpan(
                      text: 'Green',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'grocer',
                      style:
                          TextStyle(color: CustomColors.customContrastColor)),
                ])),

                //Categorias
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 25),
                    child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText('Frutas'),
                          FadeAnimatedText('Verduras'),
                          FadeAnimatedText('Legumes'),
                          FadeAnimatedText('Carnes'),
                          FadeAnimatedText('Cereais')
                        ]),
                  ),
                )
              ],
            )),

            //Form
            Container(
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

                    // Input Password
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),

                    //Login Button
                    SizedBox(
                        height: 50,
                        width: 120,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (c) {
                                return const BaseScreen();
                              }));
                            },
                            child: const Text(
                              'Entrar',
                              style: TextStyle(fontSize: 18),
                            ))),

                    //Forget Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: null,
                          child: Text(
                            'Esqueceu a Senha?',
                            style: TextStyle(
                                color: CustomColors.customContrastColor),
                          )),
                    ),

                    //Divider OR
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          )
                        ],
                      ),
                    ),

                    // Button Sign In
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (c) {
                            return SignUpScreen();
                          }));
                        },
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            side: const BorderSide(
                                width: 2, color: Colors.green)),
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
