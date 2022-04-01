


import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChangePasswordController extends GetxController {
  late TextEditingController oldPassword, newPassword,ConfirmNewPassword;


  @override
  void onInit() {
    super.onInit();
    oldPassword = TextEditingController();
    newPassword = TextEditingController();
    ConfirmNewPassword = TextEditingController();
  }

  void clickChangePassword(){

  }


}