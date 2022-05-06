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
    return Container(
      height: 100,
      width: 380,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
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
              const SizedBox(
                width: 200,
                child: Text(
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
