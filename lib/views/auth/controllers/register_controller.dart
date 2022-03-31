import 'package:dari/utils/utils.dart';
import 'package:dari/views/main/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController first_name,last_name,phone_number,email,password;


  @override
  void onInit() {
    super.onInit();
    first_name = TextEditingController();
    last_name = TextEditingController();
    phone_number = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();


  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    first_name.dispose();
    last_name.dispose();
    phone_number.dispose();
    email.dispose();
    password.dispose();


  }



  void register() {
  if (!Utils.validateInput(first_name.text)) {
      Utils.showErrorText("Le nom est requis");
      return;
    }
    if (!Utils.validateInput(last_name.text)) {
      Utils.showErrorText("Le prénom est requis");
      return;
    }
  if (!Utils.validateInput(phone_number.text)) {
    Utils.showErrorText("Le numéro de téléphone est requis");
    return;
  }
  if (!Utils.validatePassword(email.text)) {
    Utils.showErrorText("veuillez fournir votre adresse e-mail valide");
    return;
  }
  if (!Utils.validatePassword(password.text)) {
    Utils.showErrorText("Le mot de passe doit comporter 6 caractères");
    return;
  }
    Get.to(LandingPage());
  }

}
