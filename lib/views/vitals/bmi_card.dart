import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/vitals/bmi_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMICard extends StatelessWidget {
  const BMICard(
      {Key? key, this.isVital = false, this.padding = 20, this.paddingTop = 25})
      : super(key: key);
  final bool? isVital;
  final double? padding;
  final double? paddingTop;
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
      margin:
          EdgeInsets.only(top: paddingTop!, left: padding!, right: padding!),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: width,
      height: height * 0.2,
      decoration: BoxDecoration(
          color: AppColors.appPrimaryColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Row(
            children: [
              Expanded(
                  flex: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'BMI (Body Mass Index)',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'You have a normal weight',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      isVital!
                          ? ElevatedButton(
                              onPressed: () {
                                Get.toNamed("/vitals");
                              },
                              child: const Text("View More Vitals"),
                              style: ElevatedButton.styleFrom(
                                  primary: AppColors.Color4,
                                  elevation: 0,
                                  shape: const StadiumBorder()),
                            )
                          : const SizedBox.shrink(),
                    ],
                  )),
              const Expanded(child: BMIPieChart())
            ],
          )),
    );
  }
}
