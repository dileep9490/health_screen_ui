import 'package:flutter/material.dart';
import 'package:health_screen_ui/const.dart';

class HealthListItem extends StatefulWidget {
  const HealthListItem({Key? key, required this.imagepath, required this.title})
      : super(key: key);
  final String title;
  final String imagepath;

  @override
  State<HealthListItem> createState() => _HealthListItemState();
}

class _HealthListItemState extends State<HealthListItem> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1253,
      width: width * 0.9236,
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: nearlyWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 28,
            child: Image.asset("assets/images/" + widget.imagepath),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    fontFamily: "ProximaNova",
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: width * 0.5347,
                child: const Text(
                  "why we take this data from you, if you want to turn it off",
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          Switch(
              splashRadius: 0,
              activeColor: switchActiveColor,
              activeTrackColor: switchActiveTrackColor,
              value: value,
              onChanged: (val) {
                value = val;
                setState(() {});
              })
        ],
      ),
    );
  }
}
