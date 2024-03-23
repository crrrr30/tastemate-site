import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_site/common/components.dart';
import 'package:flutter_site/common/routes/index.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApplication());
}

class MainApplication extends StatelessWidget {
  const MainApplication({super.key});

  @override
  Widget build(BuildContext context) {
    AppComponents.dmSansTextTheme =
        GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme);
    AppComponents.dmSerifDisplayTextTheme =
        GoogleFonts.dmSerifDisplayTextTheme(Theme.of(context).textTheme);
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TasteMate',
        theme: Theme.of(context).copyWith(
            textTheme:
                GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme)),
        getPages: AppPages.routes,
        initialRoute: AppRoutes.HOME,
      ),
    );
  }
}
