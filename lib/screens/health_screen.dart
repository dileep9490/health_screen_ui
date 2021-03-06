import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_screen_ui/widgets/health_list_widget.dart';

import '../const.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: appBarTitle(context),
      ),
      body: _bodyBuild(context),
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
            child: SvgPicture.asset("assets/images/arrow_back_icon.svg"),
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 20,
                  child: SvgPicture.asset(
                    "assets/images/async_arrow_icon.svg",
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

List<String> imagePaths = [
  "calories_icon.svg",
  "steps_icon.svg",
  "distance_travelled_icon.svg",
  "sleep_time_icon.svg",
  "heart_rate_icon.svg",
  "height_icon.svg",
  "weight_icon.svg"
];

List<String> title = [
  "Calories",
  "Steps",
  "Distance Travelled",
  "Sleep Time",
  "Heart Rate",
  "Height",
  "Weight"
];

Widget _bodyBuild(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.1020,
                  width: width * 0.2266,
                  padding: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 4, color: appBarTitleColor),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 45),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: appBarTitleColor),
                        height: 7.5,
                        width: 7.5,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        height: height * 0.0490,
                        child: SvgPicture.asset(
                          "assets/images/google_fit_logo.svg",
                          color: appBarTitleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "Google Fit",
                  style: TextStyle(
                      fontFamily: "ProximaNova",
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 4, color: appBarTitleColor),
                  ),
                  child: SvgPicture.asset(
                    //!not displaying
                    "assets/images/ios_health_logo.svg",
                    color: appBarTitleColor,
                    height: height * 0.0446,
                    width: width * 0.0991,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "IOS-Health",
                  style: TextStyle(
                      fontFamily: "ProximaNova",
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: height * 0.0425,
        ),
        const Text(
          "You can choose not to share any of the data by turning it off",
          style: TextStyle(fontFamily: "ProximaNova", fontSize: 21),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 20),
            itemBuilder: (context, count) {
              return HealthListItem(
                imagepath: imagePaths[count],
                title: title[count],
              );
            },
            itemCount: 7,
          ),
        )
      ],
    ),
  );
}
