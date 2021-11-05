import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  final List<String> data = [
    "Drug purchase has been confirmed",
    "Drug purchase has been confirmed",
    "Drug purchase has been confirmed",
    "Drug purchase has been confirmed",
    "Drug purchase has been confirmed",
    "Drug purchase has been confirmed",
    "Drug purchase has been confirmed",
  ];
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Notifications"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(
                      'assets/images/svg/rx-icon.svg',
                      width: width,
                    )),
                title: Text(data[index]),
                subtitle: const Text("About 1 minutes ago"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          )),
    );
  }
}
