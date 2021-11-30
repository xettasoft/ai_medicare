import 'dart:ui';

import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:timelines/timelines.dart';

class DeviceReading extends StatelessWidget {
  const DeviceReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Row(
      children: [
        Flexible(
            child: Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right: 10),
          width: width,
          height: height * .4,
          decoration: BoxDecoration(
              color: ThemeController.to.themeMode == ThemeMode.light
                  ? AppColors.whiteColor
                  : AppColors.Color6,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 0,
                      child: FAProgressBar(
                        direction: Axis.vertical,
                        verticalDirection: VerticalDirection.up,
                        currentValue: 80,
                        displayText: '%',
                        progressColor: AppColors.appPrimaryColor,
                        backgroundColor: Colors.grey.shade200,
                      )),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Water Intake",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "4 liters",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.appPrimaryColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Expanded(
                                  child: Timeline.tileBuilder(
                                theme: TimelineThemeData(
                                  nodePosition: 0,
                                  connectorTheme: const ConnectorThemeData(
                                    thickness: 2.0,
                                    color: AppColors.Color3,
                                  ),
                                  indicatorTheme: const IndicatorThemeData(
                                      size: 10.0, color: AppColors.Color3),
                                ),
                                builder: TimelineTileBuilder.fromStyle(
                                  contentsAlign: ContentsAlign.basic,
                                  contentsBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Text('11am - 1$index'),
                                  ),
                                  itemCount: 10,
                                ),
                              ))
                            ],
                          )))
                ],
              )),
        )),
        const Expanded(
            flex: 0,
            child: SizedBox(
              width: 5,
            )),
        Flexible(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              //width: width,
              height: height * .2,
              decoration: BoxDecoration(
                  color: ThemeController.to.themeMode == ThemeMode.light
                      ? AppColors.whiteColor
                      : AppColors.Color6,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(3, 0), // changes position of shadow
                    ),
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 0,
                      child: Text(
                        "Sleep",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Expanded(
                      flex: 0,
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "8h 22m",
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.appPrimaryColor,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.red,
                        //height: 10,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/sleep-graph.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                    // Center(
                    //     child: Image.asset(
                    //   'assets/images/sleep-graph.png',
                    //   //width: 200,
                    // ))
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 5, right: 20),
                width: width,
                height: height * .2,
                decoration: BoxDecoration(
                    color: ThemeController.to.themeMode == ThemeMode.light
                        ? AppColors.whiteColor
                        : AppColors.Color6,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 0,
                        child: Text(
                          "Calories",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Expanded(
                        flex: 0,
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "76 KCal",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.appPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Expanded(
                        child: Center(
                          child: CircularPercentIndicator(
                            radius: width * 0.23,
                            lineWidth: 7.0,
                            percent: .8,
                            center: const Text("230KCal left"),
                            progressColor: AppColors.appPrimaryColor,
                            animation: true,
                          ),
                        ),
                      )
                      // Center(
                      //     child: Image.asset(
                      //   'assets/images/sleep-graph.png',
                      //   //width: 200,
                      // ))
                    ],
                  ),
                )),
          ],
        ))
      ],
    );
  }
}
