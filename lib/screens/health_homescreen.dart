import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_screen_ui/screens/health_screen.dart';

import '../const.dart';

class HealthHomeScreen extends StatelessWidget {
  const HealthHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: appBarTitle(context),
      ),
      body: _buildBody(context),
    );
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
            child: SvgPicture.asset("assets/images/arrow_back_icon.png"),
          ),
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'Health',
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
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
    margin: const EdgeInsets.only(top: 60),
    alignment: Alignment.center,
    child: Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HealthScreen())),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 24),
                height: height * 0.1912,
                width: width * 0.4250,
                decoration: BoxDecoration(
                  border: Border.all(width: 6, color: appBarTitleColor),
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 90),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: appBarTitleColor),
                      height: 13,
                      width: 13,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: height * 0.0743,
                      child:
                          SvgPicture.asset("assets/images/google_fit_logo.png"),
                    ),
                  ],
                ),
              ),
              const Text(
                "Google",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.0425,
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HealthScreen())),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: height * 0.1912,
                width: width * 0.4250,
                decoration: BoxDecoration(
                  border: Border.all(width: 6, color: appBarTitleColor),
                  shape: BoxShape.circle,
                ),
                child: SizedBox(
                  child: SvgPicture.asset("assets/images/ios_health_logo.png"),
                ),
              ),
              const Text(
                "IOS-Health",
                style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
