import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_site/common/components.dart";
import "package:flutter_site/common/routes/index.dart";
import "package:flutter_site/constants.dart";
import "package:flutter_site/pages/home/index.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";
import "package:url_launcher/url_launcher.dart";

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/gradient.png"),
              fit: BoxFit.cover,
              opacity: 0.25,
            )),
            child: Padding(
              padding: PAGE_PADDING,
              child: Column(
                children: [
                  SizedBox(
                    height: 0.15.sh,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/logo.svg",
                              width: 24.r,
                              height: 24.r,
                            ),
                            SizedBox(width: 0.03.sw),
                            Text("TasteMate",
                                style: AppComponents
                                    .dmSerifDisplayTextTheme.headlineMedium)
                          ],
                        ),
                        InkWell(
                          onTap: () => launchUrl(
                              Uri.parse("mailto:tastemate@proton.me")),
                          borderRadius: BorderRadius.circular(1.sw),
                          child: Container(
                            width: 128.r,
                            height: 48.r,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.sw),
                              border: Border.all(),
                            ),
                            child: Center(
                                child: Text(
                              "Contact Us",
                              style: AppComponents.dmSansTextTheme.bodyMedium,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.8.sh,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 1.sw > 870
                              ? 0.4.sw - PAGE_PADDING.horizontal / 2
                              : 1.sw - PAGE_PADDING.horizontal,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Personalized Diet,",
                                      style: 1.sw < 400
                                          ? AppComponents
                                              .dmSerifDisplayTextTheme
                                              .displayMedium
                                          : AppComponents
                                              .dmSerifDisplayTextTheme
                                              .displayLarge),
                                  Text("Redefined.",
                                      style: 1.sw < 400
                                          ? AppComponents
                                              .dmSerifDisplayTextTheme
                                              .displayMedium
                                          : AppComponents
                                              .dmSerifDisplayTextTheme
                                              .displayLarge),
                                ],
                              ),
                              Text(
                                "TasteMate is a revolutionary product that utilizes AI to optimize your everyday diet, from generating recipes when you are in the mood for Chinese to creating a personalized, hassle-free meal plan suited to your medical or dietary restrictions.",
                                style:
                                    AppComponents.dmSansTextTheme.titleMedium,
                              ),
                              InkWell(
                                onTap: () => controller.displayDialog = true,
                                borderRadius: BorderRadius.circular(1.sw),
                                child: Container(
                                  width: 256.r,
                                  height: 64.r,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.sw),
                                    border: Border.all(),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.arrow_forward),
                                      SizedBox(width: 16.r),
                                      Text(
                                        "Download Demo",
                                        style: AppComponents
                                            .dmSansTextTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        if (1.sw > 870)
                          Container(
                            width: 0.6.sw - PAGE_PADDING.horizontal / 2,
                            padding: EdgeInsets.all(32.r),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/mockup.png"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.05.sh,
                    child: GestureDetector(
                        onTap: () => Get.offAllNamed(AppRoutes.PRIVACY_POLICY),
                        child: Text(
                          'Privacy Policy',
                          style: AppComponents.dmSansTextTheme.bodyMedium
                              ?.copyWith(decoration: TextDecoration.underline),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        Obx(
          () => TweenAnimationBuilder<double>(
            tween: Tween<double>(
                begin: 0.0, end: controller.displayDialog ? 4.r : 0.0),
            duration: TRANSITION_ANIMATION_DURATION,
            builder: (_, value, child) {
              return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: value, sigmaY: value),
                child: Container(
                  width: 1.sw,
                  height: 1.sh,
                  color: controller.displayDialog ? Colors.transparent : null,
                ),
              );
            },
          ),
        ),
        Obx(
          () => IgnorePointer(
            ignoring: !controller.displayDialog,
            child: AnimatedOpacity(
              duration: TRANSITION_ANIMATION_DURATION,
              opacity: controller.displayDialog ? 1.0 : 0.0,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 0.8.sh,
                      width: 0.8.sw,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: Offset(0.r, 8.r),
                            blurRadius: 16.r,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.r),
                                decoration: const BoxDecoration(
                                    border: Border(left: BorderSide())),
                                child: Text(
                                  "Enter Your Invite Code",
                                  style: AppComponents
                                      .dmSerifDisplayTextTheme.headlineMedium,
                                ),
                              ),
                              Obx(
                                () => TextField(
                                  autofocus: true,
                                  controller: controller.textEditingController,
                                  obscureText: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: GRAY_COLOR)),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'Invitation Code',
                                    errorText: controller.errorText.isEmpty
                                        ? null
                                        : controller.errorText,
                                    prefixIcon: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (Rect bounds) =>
                                          AppComponents.gradient
                                              .createShader(bounds),
                                      child: const Icon(Icons.code),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: InkWell(
                                  onTap: controller.verifyCode,
                                  borderRadius: BorderRadius.circular(1.sw),
                                  child: Container(
                                    width: 192.r,
                                    height: 48.r,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1.sw),
                                      border: Border.all(),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.download_outlined),
                                        SizedBox(width: 16.r),
                                        Text(
                                          "Download",
                                          style: AppComponents
                                              .dmSansTextTheme.bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        height: 0.8.sh,
                        width: 0.8.sw,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.all(16.r),
                            child: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () => controller.displayDialog = false,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
