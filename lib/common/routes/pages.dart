import 'package:flutter_site/common/routes/index.dart';
import 'package:flutter_site/pages/home/index.dart';
import 'package:flutter_site/pages/privary_policy/index.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.PRIVACY_POLICY,
      page: () => const PrivacyPolicyPage(),
      binding: PrivacyPolicyBinding(),
    ),
  ];
}
