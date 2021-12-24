import 'package:ai_medicare/bindings/home_binding.dart';
import 'package:ai_medicare/bindings/login_binding.dart';
import 'package:ai_medicare/bindings/medication_binding.dart';
import 'package:ai_medicare/bindings/notification_binding.dart';
import 'package:ai_medicare/bindings/register_binding.dart';
import 'package:ai_medicare/bindings/setup_binding.dart';
import 'package:ai_medicare/bindings/setup_wallet_binding.dart';
import 'package:ai_medicare/bindings/symptom_checker_binding.dart';
import 'package:ai_medicare/views/auth_views/complete_register.dart';
import 'package:ai_medicare/views/auth_views/final_step.dart';
import 'package:ai_medicare/views/auth_views/login.dart';
import 'package:ai_medicare/views/auth_views/register.dart';
import 'package:ai_medicare/views/auth_views/welcome.dart';
import 'package:ai_medicare/views/cart/cart.dart';
import 'package:ai_medicare/views/dashboard/navigator.dart';
import 'package:ai_medicare/views/device/setup.dart';
import 'package:ai_medicare/views/doctor/doctor_profile.dart';
import 'package:ai_medicare/views/doctor/my_doctors.dart';
import 'package:ai_medicare/views/hospital/hospital.dart';
import 'package:ai_medicare/views/lab/lab.dart';
import 'package:ai_medicare/views/medications/medications.dart';
import 'package:ai_medicare/views/medications/single_medication.dart';
import 'package:ai_medicare/views/messaging/chat.dart';
import 'package:ai_medicare/views/news%20feed/feed.dart';
import 'package:ai_medicare/views/notification/notification.dart';
import 'package:ai_medicare/views/onboarding/onboard_1.dart';
import 'package:ai_medicare/views/onboarding/onboard_2.dart';
import 'package:ai_medicare/views/onboarding/onboard_3.dart';
import 'package:ai_medicare/views/onboarding/onboard_4.dart';
import 'package:ai_medicare/views/onboarding/onboarding.dart';
import 'package:ai_medicare/views/pharmacy/pharmacy.dart';
import 'package:ai_medicare/views/profile/my_profile.dart';
import 'package:ai_medicare/views/profile/my_records.dart';
import 'package:ai_medicare/views/profile/personal_data.dart';
import 'package:ai_medicare/views/profile/prescriptions.dart';
import 'package:ai_medicare/views/profile/push_notification.dart';
import 'package:ai_medicare/views/profile/settings.dart';
import 'package:ai_medicare/views/symptom_checker/symptom_checker.dart';
import 'package:ai_medicare/views/system/about.dart';
import 'package:ai_medicare/views/system/contact_us.dart';
import 'package:ai_medicare/views/system/faq.dart';
import 'package:ai_medicare/views/system/privacy.dart';
import 'package:ai_medicare/views/vitals/vitals.dart';
import 'package:ai_medicare/views/wallet/balance.dart';
import 'package:ai_medicare/views/wallet/card_details.dart';
import 'package:ai_medicare/views/wallet/card_success.dart';
import 'package:ai_medicare/views/wallet/receipts.dart';
import 'package:ai_medicare/views/wallet/reciept.dart';
import 'package:ai_medicare/views/wallet/setup.dart';
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
        binding: NotificationBinding()),
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
        page: () => const Medications(),
        binding: MedicationBinding()),
    GetPage(
      name: '/medication',
      page: () => const Medication(),
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
    GetPage(
        name: '/wallet_setup',
        page: () => const WalletStup(),
        binding: SetupWalletBinding()),
    GetPage(
      name: '/settings',
      page: () => const Settings(),
    ),
    GetPage(
        name: '/pay_card',
        page: () => const CardDetails(),
        binding: SetupWalletBinding()),
    GetPage(
        name: '/pay_card_success',
        page: () => const CardSuccess(),
        binding: SetupWalletBinding()),
    GetPage(
      name: '/wallet_balance',
      page: () => const WalletBalance(),
    ),
    GetPage(
      name: '/reciepts',
      page: () => const Reciepts(),
    ),
    GetPage(
      name: '/reciept',
      page: () => const Reciept(),
    ),
    GetPage(
      name: '/hospital',
      page: () => const Hospital(),
    ),
    GetPage(
      name: '/lab',
      page: () => const Lab(),
    ),
    GetPage(
      name: '/cart',
      page: () => const Cart(),
    ),
    GetPage(
      name: '/about',
      page: () => const AboutUs(),
    ),
    GetPage(
      name: '/privacy',
      page: () => const PrivacyPolicy(),
    ),
    GetPage(
      name: '/contactUs',
      page: () => const ContactUs(),
    ),
    GetPage(
      name: '/push_settings',
      page: () => const PushNotification(),
    ),
    GetPage(
      name: '/prescriptions',
      page: () => const Prescriptions(),
    ),
    GetPage(
      name: '/myRecords',
      page: () => const MyRecord(),
    ),
    GetPage(
      name: '/personalData',
      page: () => const PersonalData(),
    ),
    GetPage(
      name: '/chat',
      page: () => const Chat(),
    ),
    GetPage(
      name: '/newsfeed',
      page: () => const NewsFeed(),
    ),
    GetPage(
      name: '/faq',
      page: () => const Faq(),
    ),
  ];
}
