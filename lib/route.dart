import 'package:ai_medicare/bindings/login_binding.dart';
import 'package:ai_medicare/bindings/register_binding.dart';
import 'package:ai_medicare/views/auth_views/login.dart';
import 'package:ai_medicare/views/auth_views/register.dart';
import 'package:ai_medicare/views/onboarding/onboard_1.dart';
import 'package:ai_medicare/views/onboarding/onboard_2.dart';
import 'package:ai_medicare/views/onboarding/onboard_3.dart';
import 'package:ai_medicare/views/onboarding/onboard_4.dart';
import 'package:ai_medicare/views/onboarding/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

makeRoute() {
  return [
          GetPage(
        name: '/',
        page: () => const Onboarding(),
      ),
            GetPage(
        name: '/onboarding-one',
        page: () => const OnboardingOne(),
      ),
      GetPage(
        name: '/onboarding-two',
        page: () => const OnboardingTwo(),
      ),
      GetPage(
        name: '/onboarding-three',
        page: () => const OnboardingThree(),
      ),
            GetPage(
        name: '/onboarding-four',
        page: () => const OnboardingFour(),
      ),
          GetPage(
        name: '/login',
        page: () => const Login(),
        binding: LoginBinding(),
      ),
       GetPage(
        name: '/register',
        page: () => const Register(),
        binding: RegisterBinding(),
      ),
  ];
}
