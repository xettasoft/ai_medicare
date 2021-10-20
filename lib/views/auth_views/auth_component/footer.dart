import 'package:ai_medicare/views/auth_views/auth_component/auth_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({Key? key, this.isLogin}) : super(key: key);
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Padding(
        padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.04),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1,
                                style: BorderStyle.solid))),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: SizedBox(width: width * 0.03),
                ),
                const Expanded(
                  flex: 0,
                  child: Text("Or"),
                ),
                Expanded(
                  flex: 0,
                  child: SizedBox(width: width * 0.03),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1,
                                style: BorderStyle.solid))),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: width * 0.15,
                ),
                SizedBox(width: width * 0.1),
                SvgPicture.asset(
                  'assets/images/svg/facebook.svg',
                  width: width * 0.15,
                )
              ],
            ),
            SizedBox(height: height * 0.03),
            AuthText(isLogin: isLogin)
          ],
        ));
  }
}
