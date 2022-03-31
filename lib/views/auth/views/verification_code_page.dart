import 'package:dari/views/auth/controllers/auth_controller.dart';
import 'package:dari/views/auth/views/changepassword_page.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationCodePage extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());

  VerificationCodePage({Key? key}) : super(key: key);

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
                  'vérifier le compte',
                  style: TextStyle(
                    color: Color(0xff374151),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Enter the code we sent to your email address to verify your "Dari" account :',
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
                    'Code',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff374151),
                    ),
                  ),
                ),
                TextField(
                  controller: controller.verificationCode,
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
                      hintText: 'Entrez votre Code'),
                ),

                const SizedBox(
                  height: 15,
                ),

                SubmitButton(title:"Confirmer",onPressed: ()=>{
                    Get.to(ChangePasswordPage())
                },)
              ],
            ),
          ),
        )
    );
  }
}
