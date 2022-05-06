import 'package:flutter/material.dart';
import 'package:health_screen_ui/screens/old_sensors.dart';

import '../const.dart';

class ViewOldSensorsWidget extends StatelessWidget {
  const ViewOldSensorsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OldSensorsScreen(),
        ),
      ),
      child: Container(
          height: 60,
          width: 380,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: nearlyWhite, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "View older Sensors",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
