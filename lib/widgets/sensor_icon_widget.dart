import 'package:flutter/material.dart';

import '../const.dart';

class SesnsorIconWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  Function() onTap;
  SesnsorIconWidget(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 155,
            width: 155,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: nearlyWhite),
            child: Image.asset(imagePath),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: const TextStyle(
                color: logoNameColor,
                fontFamily: "ProximaNova",
                fontSize: 28,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
