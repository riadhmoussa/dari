import 'package:dari/config/app_colors.dart';
import 'package:dari/views/auth/controllers/auth_controller.dart';
import 'package:dari/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ForgetPasswordPage extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());
   ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 115,
            ),
            const Text(
              'Mot de passe oublié',
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
            InputField(
              field: "Adresse e-mail",
              placeholder: "Eg namaemail@emailkamu.com", controller: controller.emailForget,),
            Expanded(
              child: Container(),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.clickForgetPassword();
                },
                child: const Text(
                  'Envoyer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.primaryColor,
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

