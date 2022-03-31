import 'package:dari/config/app_colors.dart';
import 'package:dari/config/app_styles.dart';
import 'package:dari/views/main/views/details_announce_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatefulWidget {
  final String field;
  final String placeholder;
  final TextEditingController controller;
  final bool obscureText;

  const InputField(
      {Key? key, this.field = "", this.placeholder = "",this.obscureText = false,  required this.controller })
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            widget.field,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xff374151),
            ),
          ),
        ),
        TextField(
          obscureText: widget.obscureText,
          controller: widget.controller,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: const TextStyle(
                fontSize: 12,
              ),
              hintText: widget.placeholder),
        ),
      ],
    );
  }
}
