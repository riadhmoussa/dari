import 'dart:async';

import 'package:dari/config/app_colors.dart';
import 'package:dari/views/auth/views/welcome_page.dart';
import 'package:dari/views/main/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () =>Get.off(const WelcomePage()) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.whiteColor,
        child: Center(
            child: Image.asset('assets/logo_app.png',
                width: (160.0), height: (160.0), fit: BoxFit.fill)),
      ),
    );
  }
}
