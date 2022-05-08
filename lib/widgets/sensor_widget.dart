import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const.dart';

class SensorWidget extends StatelessWidget {
  const SensorWidget(
      {Key? key,
      required this.imagePath,
      required this.status,
      required this.title})
      : super(key: key);
  final String title;
  final String imagePath;
  final String status;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "03 March 2022",
            style: TextStyle(fontFamily: "ProximaNova", fontSize: 18),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: height * 0.1303,
            decoration: BoxDecoration(
                color: nearlyWhite, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(imagePath),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          fontFamily: "ProximaNova",
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      "ID:",
                      style: TextStyle(
                          fontFamily: "ProxminaNova",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      "abc123",
                      style: TextStyle(
                          fontFamily: "ProximaNova",
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: width * 0.1944,
                    ),
                    const Text(
                      "Status:",
                      style: TextStyle(
                          fontFamily: "ProxminaNova",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      status,
                      style: const TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
