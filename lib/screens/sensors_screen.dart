import 'package:flutter/material.dart';
import 'package:health_screen_ui/const.dart';
import 'package:health_screen_ui/screens/dropbox_connect.dart';
import 'package:health_screen_ui/screens/nfc_connect.dart';

import '../widgets/sensor_icon_widget.dart';
import '../widgets/view_old_sensors_widget.dart';

class SensorsScreen extends StatelessWidget {
  const SensorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: appBarTitle(context),
        ),
        floatingActionButton: const ViewOldSensorsWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: _buildBody(context));
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
          'Sensors',
          style: TextStyle(
              color: appBarTitleColor,
              fontFamily: "ProximaNova",
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
      ],
    ),
  );
}

Widget _buildBody(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Add a new Sensor",
          style: TextStyle(
              fontSize: 24,
              fontFamily: "ProximaNova",
              color: greyTextColor,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 26,
        ),
        SesnsorIconWidget(
          imagePath: "assets/images/nfc_logo.png",
          title: "NFC",
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NFCconnect(),
            ),
          ),
        ),
         SizedBox(
          height: MediaQuery.of(context).size.height*0.0425,
        ),
        SesnsorIconWidget(
          imagePath: "assets/images/dropbox_logo.png",
          title: "DropBox",
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DropBoxConnect(),
            ),
          ),
        ),
      ],
    ),
  );
}
