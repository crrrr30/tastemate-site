import "package:flutter/material.dart";
import "package:flutter_site/pages/home/index.dart";
import "package:get/get.dart";

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.put<TextEditingController>(TextEditingController());
  }
}
