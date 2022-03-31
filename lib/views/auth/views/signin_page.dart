import 'package:dari/config/app_colors.dart';
import 'package:dari/views/auth/controllers/auth_controller.dart';
import 'package:dari/views/main/landing_page.dart';
import 'package:dari/widgets/input_field.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgetpassword_page.dart';

class SignInPage extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());

   SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (ctx) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Connexion',
                      style: TextStyle(
                        color: Color(0xff374151),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'Veuillez vous connecter pour continuer',
                      style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 56,
                    ),
                    InputField(
                      field: "Adresse e-mail",
                      placeholder: "Eg namaemail@emailkamu.com",
                      controller: controller.emailLogin,),
                    InputField(
                        field: "Mot de passe",
                        placeholder: "Tapez votre mot de passe",
                        controller: controller.passwordLogin,obscureText: true),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Get.to(ForgetPasswordPage());
                        },
                        child: const Text(
                          'Mot de passe oublié?',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SubmitButton(title:"Connecté",onPressed: ()=>{
                      controller.checkLogin()

                    }),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}


