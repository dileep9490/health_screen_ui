import 'package:flutter/material.dart';

import '../const.dart';

class SesnsorIconWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function() onTap;
  const SesnsorIconWidget(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: height * 0.1646,
            width: width * 0.3659,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200), color: nearlyWhite),
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
