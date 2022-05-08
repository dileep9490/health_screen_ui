import 'package:flutter/material.dart';
import 'package:health_screen_ui/widgets/sensor_widget.dart';

import '../const.dart';

class OldSensorsScreen extends StatelessWidget {
  const OldSensorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: appBarTitle(context),
        ),
        body: _buildBody());
  }
}

Widget appBarTitle(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 10),
    child: Row(
      children: [
        InkWell(
          child: SizedBox(
           height: MediaQuery.of(context).size.height * 0.0340,
            child: Image.asset("assets/images/arrow_back_icon.png"),
          ),
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'Used Sesors',
          style: TextStyle(
              color: appBarTitleColor,
              fontFamily: "ProximaNova",
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 20,
                  child: Image.asset(
                    "assets/images/sync_icon.png",
                  ),
                ),
                const Text(
                  "4 min. ago",
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _buildBody() {
  return Column(
    children: const [
      SensorWidget(
          imagePath: "assets/images/nfc_logo.png",
          status: "Connected",
          title: "NFC"),
      SensorWidget(
          imagePath: "assets/images/dropbox_logo.png",
          status: "Disconnected",
          title: "DropBox"),
      SensorWidget(
          imagePath: "assets/images/nfc_logo.png",
          status: "Connected",
          title: "NFC"),
    ],
  );
}
