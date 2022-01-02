import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/views/auth_views/auth_component/footer.dart';
import 'package:ai_medicare/views/auth_views/auth_component/login_button.dart';
import 'package:ai_medicare/views/auth_views/auth_component/login_form.dart';
import 'package:ai_medicare/views/shared/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 0,
                child: Obx(() {
                  if (controller.loading.isTrue) {
                    print(true);
                    SchedulerBinding.instance
                        ?.addPostFrameCallback((_) => _loading(context));
                  }

                  return const SizedBox.shrink();
                }),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                flex: 0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "hey".tr,
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        "welcome".tr,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      const LoginForm()
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Expanded(
                flex: 0,
                child: LoginButton(),
              ),
              const Expanded(
                flex: 0,
                child: AuthFooter(
                  isLogin: false,
                ),
              ),
            ],
          ),
        )
      ],
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
