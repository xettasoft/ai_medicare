import 'package:ai_medicare/views/dashboard/latest_feed_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestFeed extends StatelessWidget {
  const LatestFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Latest Feed",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 30),
          width: width,
          height: height * 0.2,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                  width: width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => const LatestFeedCard(),
                    itemCount: 5,
                  ))),
        ),
      ],
    );
  }
}
