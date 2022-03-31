import 'package:dari/config/app_colors.dart';
import 'package:dari/views/models/Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  Item _item;
  CustomRadio(this._item);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: _item.isSelected ? AppColors.primaryColor : Colors.white,
        child: Container(
          height: 50,
          width: 120,
          alignment: Alignment.center,
          margin: new EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                _item.title,
                style: TextStyle(
                    color: _item.isSelected ? Colors.white : Colors.grey),
              )
            ],
          ),
        ));
  }
}