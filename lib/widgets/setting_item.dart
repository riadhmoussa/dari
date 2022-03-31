import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {Key? key,
        required this.leftImage,
        required this.name,
        required this.rightImage})
      : super(key: key);

  final String leftImage;
  final String name;
  final String rightImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 5.0),
      child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget> [
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(leftImage), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 24),
              Text(
                name,
                style: const TextStyle(  fontFamily: 'Regular',fontSize: 18),
              )

            ],

          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(rightImage), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
      ),
    );
  }
}