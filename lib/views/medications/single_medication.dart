import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/medications/medication_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Medication extends StatelessWidget {
  const Medication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Medication"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 0,
              child: Text("Diabetes melitus",
                  style: TextStyle(fontSize: 25, color: Colors.grey.shade500))),
          Expanded(
              child: ListView(
            children: const [
              SizedBox(
                height: 50,
              ),
              MedicationTile(
                title: "Purpose",
              ),
              MedicationTile(
                title: "Dose",
              ),
              MedicationTile(
                title: "Time",
              ),
              MedicationTile(
                title: "Form",
              ),
              MedicationTile(
                title: "Special Instruction",
              ),
              //Obx(()=>LazyLoadScrollView())
            ],
          )),
          Expanded(
              flex: 0,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.appPrimaryColor,
                        shape: const StadiumBorder()),
                    onPressed: () {
                      //Get.offAndToNamed("/vitals");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Move to Pharmacy".tr,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
