import 'package:flutter/material.dart';
import 'package:health_screen_ui/const.dart';
import 'package:health_screen_ui/screens/nfc_connected.dart';
import 'package:health_screen_ui/widgets/view_old_sensors_widget.dart';

class NFCconnect extends StatelessWidget {
  const NFCconnect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
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
            height: 32,
            child: Image.asset("assets/images/arrow_back_icon.png"),
          ),
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'NFC',
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

Widget _buildBody(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: const BoxDecoration(
            color: nearlyWhite,
            shape: BoxShape.circle,
          ),
          width: width * 0.5170,
          height: height * 0.2326,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: width * 0.1701,
                  child: Image.asset("assets/images/nfc_logo.png")),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "NFC",
                style: TextStyle(
                    fontSize: 46,
                    color: textcolor,
                    fontWeight: FontWeight.w700,
                    fontFamily: "ProximaNova"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: borderColor)),
          child: Column(
            children: const [
              Text(
                "Sensor Id",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "abc123",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w300,
                    fontSize: 21),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Start Date",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "04 March 2022",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NFCConnected())),
          child: Container(
            height: height * 0.0626,
            width: width * 0.6222,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(68), color: greyTextColor),
            child: const Center(
              child: Text("Connect",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ProximaNova",
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ),
          ),
        ),
      ],
    ),
  );
}
