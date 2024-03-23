import "package:flutter/material.dart";
import "package:flutter_site/common/http_service.dart";
import "package:get/get.dart";
import "package:url_launcher/url_launcher.dart";

class HomeController extends GetxController {
  final RxBool _displayDialog = false.obs;
  bool get displayDialog => _displayDialog.value;
  set displayDialog(bool value) => _displayDialog(value);

  final RxBool _success = false.obs;
  bool get success => _success.value;

  final RxBool _failure = false.obs;
  bool get failure => _failure.value;

  final RxString _errorText = "".obs;
  String get errorText => _errorText.value;

  TextEditingController get textEditingController =>
      Get.find<TextEditingController>();

  Future<void> verifyCode() async {
    final result = await HttpService.getDownloadURL(textEditingController.text);
    if (result.connectionStatus == false) {
      _errorText.value = "Connection failed";
    } else {
      if (result.url == null) {
        _errorText.value = "Invalid code";
      } else {
        _errorText.value = "";
        launchUrl(Uri.parse(result.url!));
      }
    }
  }
}
