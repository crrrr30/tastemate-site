import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_site/common/components.dart";
import "package:flutter_site/common/routes/index.dart";
import "package:flutter_site/constants.dart";
import "package:flutter_site/pages/privary_policy/index.dart";
import "package:flutter_svg/svg.dart";
import "package:flutter_widget_from_html/flutter_widget_from_html.dart";
import "package:get/get.dart";

class PrivacyPolicyPage extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.offAllNamed(AppRoutes.HOME)),
        title: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/logo.svg",
              width: 24.r,
              height: 24.r,
            ),
            SizedBox(width: 0.03.sw),
            Text("TasteMate",
                style: AppComponents.dmSerifDisplayTextTheme.headlineMedium)
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/gradient.png"),
            fit: BoxFit.cover,
            opacity: 0.25,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0.15.sh, 0, 0),
          child: SingleChildScrollView(
              child: Padding(
            padding: PAGE_PADDING,
            child: const HtmlWidget(PRIVARY_POLICY),
          )),
        ),
      ),
    );
  }
}
