import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, this.title, this.data}) : super(key: key);
  final String? title;
  final List<Map<String, dynamic>>? data;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: width,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "title",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(
                              'assets/images/svg/profile_svg/${data![index]["icon"]}',
                              width: width,
                            )),
                        title: Text(data![index]["title"]),
                        trailing: data![index]["trailing"],
                      ),
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: data!.length),
            ],
          )),
    );
  }
}
