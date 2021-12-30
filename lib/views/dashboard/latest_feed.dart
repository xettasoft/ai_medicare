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
        const Expanded(
            flex: 0,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Latest Feed",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))),
        Expanded(
          flex: 0,
          child: Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 30, left: 15, right: 15),
            width: width,
            //height: height * 0.2,

            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            constraints: BoxConstraints(maxHeight: height * 0.25),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                    width: width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => GestureDetector(
                        child: const LatestFeedCard(),
                        onTap: () {
                          Get.toNamed('/newsfeed');
                        },
                      ),
                      itemCount: 5,
                    ))),
          ),
        )
      ],
    );
  }
}
