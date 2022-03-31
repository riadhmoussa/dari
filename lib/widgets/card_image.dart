import 'package:dari/config/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardImage extends StatefulWidget {
  final String url;


  const CardImage({
    Key? key,
    this.url =
        "https://scontent.ftun15-1.fna.fbcdn.net/v/t39.30808-6/275981680_522847095864754_1686606410283657111_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=-W5KHp5PIRoAX-bvF51&_nc_ht=scontent.ftun15-1.fna&oh=00_AT--nxjFyuXehK6avLTbOJVjv-Lli4YPPB0YIU9dcPQvcA&oe=6249B5EC",
  }) : super(key: key);

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.url), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Stack(
        children:  [
          Positioned(
              right: 5,
              child: Icon(
            Icons.cancel,
            color: AppColors.redColor,

          ))

        ],
      ),
    );
  }
}
