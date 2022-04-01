import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/controllers/change_password_controller.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordPage extends StatelessWidget {
  final ChangePasswordController _controller = Get.put(ChangePasswordController());

   ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text(
          "Changer le mot de passe",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Ancien mot de passe ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff374151),
                    ),
                  ),
                ),
                TextField(
                  controller: _controller.oldPassword,
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
                      hintText: 'Entrez votre ancien mot de passe '),
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
                  controller: _controller.newPassword,
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
                  controller: _controller.ConfirmNewPassword,
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

                SubmitButton(title:"Change le mot de passe",onPressed: ()=>{
                  _controller.clickChangePassword()
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
