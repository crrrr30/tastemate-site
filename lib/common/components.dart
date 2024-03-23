import 'package:flutter/material.dart';

class AppComponents {
  static late final TextTheme dmSansTextTheme;
  static late final TextTheme dmSerifDisplayTextTheme;

  static const gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.8, 1),
    colors: <Color>[
      Color(0xFFFCB045),
      Color(0xFFFE2D2D),
      Color(0xFF9430D8),
    ],
    tileMode: TileMode.mirror,
  );
  static final gradientWithOpacity = LinearGradient(
    begin: Alignment.topLeft,
    end: const Alignment(0.8, 1),
    colors: <Color>[
      const Color(0xFFFCB045).withOpacity(0.1),
      const Color(0xFFFE2D2D).withOpacity(0.1),
      const Color(0xFF9430D8).withOpacity(0.1),
    ],
    tileMode: TileMode.mirror,
  );
}
