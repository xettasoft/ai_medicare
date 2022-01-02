import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/views/auth_views/auth_component/footer.dart';
import 'package:ai_medicare/views/auth_views/auth_component/register_button.dart';
import 'package:ai_medicare/views/shared/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserForm extends GetView<LoginController> {
  const UserForm({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: ListView(
        //mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Text(
              "$title".tr,
              style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
            ),
          ),
          const ATextFormField(
            hintText: 'fNameMessage',
            labelText: 'fName',
            icon: Icon(Icons.person_outline),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const ATextFormField(
            hintText: 'lNameMessage',
            labelText: 'lName',
            icon: Icon(Icons.person_outline),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const ATextFormField(
            hintText: 'emailMessage',
            labelText: 'email',
            icon: Icon(Icons.mail_outline),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const ATextFormField(
            hintText: 'passwordMessage',
            labelText: 'password',
            obscureText: true,
            icon: Icon(Icons.lock_open_outlined),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const RegisterButton(),
          SizedBox(
            height: height * 0.02,
          ),
          const AuthFooter(isLogin: true),
        ],
      ),
    );
  }
}
