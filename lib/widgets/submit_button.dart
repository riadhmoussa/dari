import 'package:dari/config/app_colors.dart';
import 'package:dari/config/app_styles.dart';
import 'package:dari/views/main/views/details_announce_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitButton extends StatefulWidget {
  final String title;
  final Function() onPressed;

  const SubmitButton(
      {Key? key, this.title = "",required this.onPressed})
      : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: ()=> widget.onPressed(),
        child:  Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColors.primaryColor,
          fixedSize:  Size(MediaQuery.of(context).size.width, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
