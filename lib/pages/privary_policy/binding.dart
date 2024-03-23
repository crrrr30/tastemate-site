import "package:flutter_site/pages/privary_policy/index.dart";
import "package:get/get.dart";

class PrivacyPolicyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivacyPolicyController>(() => PrivacyPolicyController());
  }
}
