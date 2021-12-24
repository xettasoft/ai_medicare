import 'package:ai_medicare/controllers/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Notifications extends GetView<NotificationController> {
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
          child: Obx(() => LazyLoadScrollView(
              onEndOfPage: controller.loadNextPage,
              isLoading: controller.lastPage,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.separated(
                    itemCount: controller.notifications.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(
                              'assets/images/svg/rx-icon.svg',
                              width: width,
                            )),
                        title: Text(controller.notifications[index]),
                        subtitle: const Text("About 1 minutes ago"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      );
                      ;
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                  )),
                  controller.loading
                      ? const Expanded(
                          flex: 0,
                          child: Text("loading"),
                        )
                      : const SizedBox.shrink()
                ],
              )))),
    );
  }
}
