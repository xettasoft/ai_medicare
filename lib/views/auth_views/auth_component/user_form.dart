import 'package:ai_medicare/controllers/register_controller.dart';
import 'package:ai_medicare/views/auth_views/auth_component/footer.dart';
import 'package:ai_medicare/views/auth_views/auth_component/register_button.dart';
import 'package:ai_medicare/views/shared/loading_card.dart';
import 'package:ai_medicare/views/shared/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserForm extends StatelessWidget {
  const UserForm({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return GetBuilder(
        builder: (RegisterController controller) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: ListView(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Obx(() {
                      FocusScope.of(context).requestFocus(FocusNode());
                      return Text(
                        controller.error,
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      );
                    }),
                  ),
                  Obx(() => ATextFormField(
                        hintText: 'fNameMessage',
                        labelText: 'fName',
                        onTextChange: controller.firstNameChanged,
                        errorText: controller.firstNameErorText,
                        icon: const Icon(Icons.person_outline),
                      )),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Obx(() => ATextFormField(
                        hintText: 'lNameMessage',
                        labelText: 'lName',
                        onTextChange: controller.lastNameChanged,
                        errorText: controller.lastNameErorText,
                        icon: const Icon(Icons.person_outline),
                      )),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Obx(() => ATextFormField(
                        hintText: 'phoneMessage',
                        labelText: 'phone',
                        onTextChange: controller.phoneChanged,
                        errorText: controller.phoneErorText,
                        icon: const Icon(Icons.phone),
                      )),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Obx(() => ATextFormField(
                        hintText: 'emailMessage',
                        labelText: 'email',
                        onTextChange: controller.emailChanged,
                        errorText: controller.emailErorText,
                        icon: const Icon(Icons.mail_outline),
                      )),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Obx(() => ATextFormField(
                        hintText: 'passwordMessage',
                        labelText: 'password',
                        onTextChange: controller.passwordChanged,
                        errorText: controller.passwordErorText,
                        obscureText: true,
                        icon: const Icon(Icons.lock_open_outlined),
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Obx(() => ATextFormField(
                        hintText: 'confirmPasswordMessage',
                        labelText: 'Confirm Password',
                        onTextChange: controller.confirmPasswordChanged,
                        errorText: controller.confirmPasswordErorText,
                        obscureText: true,
                        icon: const Icon(Icons.lock_open_outlined),
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  RegisterButton(loader: _loading),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const AuthFooter(isLogin: true),
                ],
              ),
            ));
  }

  void _loading(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(0.3),
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        builder: (BuildContext bc) {
          return const Center(
            child: LoadingCard(),
          );
        });
  }
}
