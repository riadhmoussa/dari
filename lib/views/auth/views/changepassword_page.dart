import 'package:dari/views/auth/controllers/auth_controller.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordPage extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());
   ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 115,
              ),
              const Text(
                'Changer le nouveau mot de passe',
                style: TextStyle(
                  color: Color(0xff374151),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Entrez votre email enregistré ci-dessous',
                style: TextStyle(
                  color: Color(0xff9CA3AF),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 56,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Nouveau mot de passe',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff374151),
                  ),
                ),
              ),
              TextField(
                controller: controller.passwordChange,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                    ),
                    hintText: 'Entrez votre nouveau mot de passe'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Confirmez le mot de passe',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff374151),
                  ),
                ),
              ),
              TextField(
                controller: controller.passwordConfirm,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                    ),
                    hintText: 'Entrez votre mot de passe de confirmation'),
              ),
              const SizedBox(
                height: 15,
              ),

              SubmitButton(title:"Réinitialiser le mot de passe",onPressed: ()=>{
              controller.clickChangePassword()
              },)
            ],
          ),
        ),
      )
    );
  }
}