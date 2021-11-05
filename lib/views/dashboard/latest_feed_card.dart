import 'package:ai_medicare/common/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestFeedCard extends StatelessWidget {
  const LatestFeedCard({Key? key, this.doctor}) : super(key: key);
  final String? doctor;
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Row(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            //padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            width: width,
            decoration: BoxDecoration(
                color: AppColors.Color2,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/sample_feed.png',
                  width: width * 0.35,
                  height: height * .2,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                          flex: 0,
                          child: Text(
                            "New vaccines available",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                      SizedBox(
                        width: width * 0.5,
                        child: const AutoSizeText(
                            'Exercises is king and nutrition is queen. Combine the two and you will have a kingdom',
                            style: TextStyle(fontSize: 16),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
