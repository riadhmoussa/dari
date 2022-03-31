import 'package:dari/config/app_colors.dart';
import 'package:dari/utils/utils.dart';
import 'package:dari/views/auth/controllers/auth_controller.dart';
import 'package:dari/views/auth/views/signin_page.dart';
import 'package:dari/views/auth/views/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo_app.png",
                  height: 300,
                ),
                const SizedBox(height: 55),
                const Text(
                  "Bienvenue",
                  style: TextStyle(
                    fontFamily: 'SemiBold',
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 54.0),
                  child: Text(
                    "Avant de profiter des services de Dary Veuillez d'abord vous inscrire",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Regular', fontSize: 14),
                  ),
                ),
                const SizedBox(height: 95),
                ElevatedButton(
                    child: Text("Créer un compte".toUpperCase(),
                        style: const TextStyle(fontFamily: 'Bold', fontSize: 14)),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primaryColor),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(vertical: 16, horizontal: 90)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                                side: BorderSide(color: AppColors.primaryColor)))),
                    onPressed: () => {
                      Get.to(SignUpPage())
                    }),
                const SizedBox(height: 16),
                ElevatedButton(
                    child: Text("S'identifier".toUpperCase(),
                        style: const TextStyle(fontFamily: 'Bold', fontSize: 14)),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.whiteColor),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primaryColor),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 115)),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)),
                            side: BorderSide(color: AppColors.primaryColor)))),
                    onPressed: () => {
                      Get.to(SignInPage())
                    }),
                Spacer(),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "En vous connectant ou en vous inscrivant, vous avez accepté",

                        style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: 10,

                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Les termes et conditions',
                              style: TextStyle(color: Colors.green)),
                          TextSpan(
                              text: 'et',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: ' Politique de confidentialité.',
                              style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
