import 'package:dari/utils/utils.dart';
import 'package:dari/views/auth/views/changepassword_page.dart';
import 'package:dari/views/auth/views/verification_code_page.dart';
import 'package:dari/views/main/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late TextEditingController verificationCode,emailLogin, passwordLogin,emailForget,passwordChange,passwordConfirm;


  @override
  void onInit() {
    super.onInit();
    verificationCode = TextEditingController();
    emailLogin = TextEditingController();
    passwordLogin = TextEditingController();
    emailForget = TextEditingController();

    passwordChange = TextEditingController();
    passwordConfirm = TextEditingController();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    verificationCode.dispose();
    emailLogin.dispose();
    passwordLogin.dispose();
    emailForget.dispose();

    passwordChange.dispose();
    passwordConfirm.dispose();
  }



  void checkLogin() {
    if (!Utils.validateEmail(emailLogin.text)) {
      Utils.showErrorText("veuillez fournir votre adresse e-mail valide");
      return;
    }
    if (!Utils.validatePassword(passwordLogin.text)) {
      Utils.showErrorText("Le mot de passe doit comporter 6 caractères");
      return;
    }
    Get.to(LandingPage());
  }

  void clickForgetPassword(){
    if(!Utils.validateEmail(emailForget.text)){
      Utils.showErrorText("veuillez fournir votre adresse e-mail valide");
      return;
    }
    Get.to(VerificationCodePage());
  }

  void clickChangePassword(){
    if (!Utils.validatePassword(passwordChange.text)) {
      Utils.showErrorText("Le mot de passe doit comporter 6 caractères");
      return;
    }
    if(passwordChange.text!=passwordConfirm.text){
      Utils.showErrorText("Veuillez entrer le même mot de passe");
      return;
    }
    Get.off(LandingPage());
  }

}
