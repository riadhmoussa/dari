import 'package:dari/config/app_colors.dart';
import 'package:dari/views/auth/controllers/register_controller.dart';
import 'package:dari/widgets/input_field.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SignUpPage extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());
   SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Bienvenue vous pouvez créer un compte chui nous',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff374151),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                  ),
                  const Text(
                    'Pour profiter de notre service, vous n\'avez pas besoin de vous inscrire dans notre application',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9CA3AF),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputField(field:"Nom",placeholder:"Entrez votre nom", controller: controller.first_name,),
                  InputField(field:"Prénom",placeholder:"Entrez votre prénom", controller: controller.last_name,),
                  InputField(field:"Numéro de téléphone",placeholder:"Entrez votre numéro de téléphone", controller: controller.phone_number,),
                  InputField(field:"Adresse e-mail",placeholder:"Eg namaemail@emailkamu.com", controller: controller.email,),
                  InputField(field:"Mot de passe",placeholder:"Tapez votre mot de passe", controller: controller.password,obscureText: true,),
                  InputField(field:"Confirmez le mot de passe",placeholder:"Tapez votre mot de passe", controller: controller.password,obscureText: true,),

                  const SizedBox(
                    height: 30,
                  ),
                  SubmitButton(title:"Inscription",onPressed: ()=>controller.register(),)

                ],
              ),
            ),
          )
      ),
    );

  }
}
