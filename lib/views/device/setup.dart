import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/setup_controller.dart';
import 'package:ai_medicare/views/device/setup_done.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SetupDevice extends GetView<SetupController> {
  const SetupDevice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Device"),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 0,
                    child: Text("AIMedicare Watch",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.normal,
                            fontSize: 30))),
                Expanded(
                  flex: 0,
                  child: Obx(() => Image.asset(
                        controller.selected.value,
                        width: width,
                        height: height * .45,
                        //scale: 1,
                        fit: BoxFit.contain,
                      )),
                ),
                Expanded(
                  flex: 0,
                  child: SizedBox(
                      width: width,
                      height: height * .18,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              controller.selectDevice(index: index);
                            },
                            child: Obx(() => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/selected.svg',
                                      width: width * 0.05,
                                      color: controller.selected.value ==
                                              controller.images[index]
                                          ? AppColors.appPrimaryColor
                                          : AppColors.whiteColor,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      decoration: BoxDecoration(
                                        border: controller.selected.value ==
                                                controller.images[index]
                                            ? Border.all(
                                                width: 5,
                                                color:
                                                    AppColors.appPrimaryColor)
                                            : null,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Image.asset(
                                        controller.images[index],
                                        width: width * .3,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ))),
                        itemCount: controller.images.length,
                      )),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'set up your device with one click connect watch to get better experience monitor your vitals in real time ',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.8),
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                    flex: 0,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: AppColors.appPrimaryColor,
                              shape: const StadiumBorder()),
                          onPressed: () {
                            _deviceSetupDone(
                                context, controller.selected.value);
                            //Get.offAndToNamed("/vitals");
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "Connect Device".tr,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        )))
              ],
            )));
  }

  void _deviceSetupDone(BuildContext context, String image) {
    showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(0.3),
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (BuildContext bc) {
          return Center(
            child: SetupDone(
              image: image,
            ),
          );
        });
  }
}
