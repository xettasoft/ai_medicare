import 'package:ai_medicare/bindings/home_binding.dart';
import 'package:ai_medicare/bindings/login_binding.dart';
import 'package:ai_medicare/bindings/register_binding.dart';
import 'package:ai_medicare/bindings/setup_binding.dart';
import 'package:ai_medicare/bindings/symptom_checker_binding.dart';
import 'package:ai_medicare/views/auth_views/complete_register.dart';
import 'package:ai_medicare/views/auth_views/final_step.dart';
import 'package:ai_medicare/views/auth_views/login.dart';
import 'package:ai_medicare/views/auth_views/register.dart';
import 'package:ai_medicare/views/auth_views/welcome.dart';
import 'package:ai_medicare/views/dashboard/navigator.dart';
import 'package:ai_medicare/views/device/setup.dart';
import 'package:ai_medicare/views/doctor/doctor_profile.dart';
import 'package:ai_medicare/views/doctor/my_doctors.dart';
import 'package:ai_medicare/views/medications/medications.dart';
import 'package:ai_medicare/views/notification/notification.dart';
import 'package:ai_medicare/views/onboarding/onboard_1.dart';
import 'package:ai_medicare/views/onboarding/onboard_2.dart';
import 'package:ai_medicare/views/onboarding/onboard_3.dart';
import 'package:ai_medicare/views/onboarding/onboard_4.dart';
import 'package:ai_medicare/views/onboarding/onboarding.dart';
import 'package:ai_medicare/views/pharmacy/pharmacy.dart';
import 'package:ai_medicare/views/profile/my_profile.dart';
import 'package:ai_medicare/views/symptom_checker/symptom_checker.dart';
import 'package:ai_medicare/views/vitals/vitals.dart';
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
    GetPage(
      name: '/complete',
      page: () => const CompleteRegistration(),
    ),
    GetPage(
      name: '/final-step',
      page: () => const FinalStep(),
    ),
    GetPage(
      name: '/welcome',
      page: () => const Welcome(),
    ),
    GetPage(
      name: '/notifications',
      page: () => Notifications(),
    ),
    GetPage(
        name: '/symptomCheck',
        page: () => SymptomCheck(),
        binding: SymptomCheckerBinding()),
    GetPage(
      name: '/doctorProfile',
      page: () => DoctorProfile(),
    ),
    GetPage(
      name: '/myProfile',
      page: () => const MyProfile(),
    ),
    GetPage(
      name: '/vitals',
      page: () => const Vitals(),
    ),
    GetPage(
      name: '/medications',
      page: () => Medications(),
    ),
    GetPage(
      name: '/myDoctors',
      page: () => const MyDoctors(),
    ),
    GetPage(
      name: '/pharmacy',
      page: () => Pharmacy(),
    ),
    GetPage(
        name: '/setup',
        page: () => const SetupDevice(),
        binding: SetupBinding()),
    GetPage(
      name: '/home',
      page: () => Navigator(),
      binding: HomeBinding(),
    ),
  ];
}
