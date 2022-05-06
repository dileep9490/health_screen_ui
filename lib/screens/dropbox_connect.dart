import 'package:flutter/material.dart';
import 'package:health_screen_ui/const.dart';
import 'package:health_screen_ui/screens/dropbox_connected.dart';
import 'package:health_screen_ui/widgets/view_old_sensors_widget.dart';

class DropBoxConnect extends StatelessWidget {
  const DropBoxConnect({Key? key}) : super(key: key);

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
          'DropBox',
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
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            color: nearlyWhite,
            borderRadius: BorderRadius.circular(200),
          ),
          width: 219,
          height: 219,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/dropbox_logo.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "DB",
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
          height: 130,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                    fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "abc123",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w300,
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "example@gmail.com",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w300,
                    fontSize: 18),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 140,
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DropBoxConnected())),
          child: Container(
            height: 50,
            width: 218,
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
