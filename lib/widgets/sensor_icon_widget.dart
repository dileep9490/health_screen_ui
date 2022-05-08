import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            padding: const EdgeInsets.all(24),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: nearlyWhite),
            child: SvgPicture.asset(
              imagePath,
              height: 84.2,
              width: 84.2,
            ),
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
