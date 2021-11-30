import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicationTile extends StatelessWidget {
  const MedicationTile({Key? key, this.title}) : super(key: key);

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
            color: ThemeController.to.themeMode == ThemeMode.light
                ? Colors.grey.withOpacity(0.1)
                : Colors.black45,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: ExpansionTile(
          title: Text(
            title!,
            style: TextStyle(color: Colors.grey.shade500),
          ),
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "This is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseum",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
          iconColor: AppColors.appPrimaryColor,
        ));
  }
}
