import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  const AppIcons._();

  static String get _base => "assets/images/icon";

  static Color get _inactive => const Color(0xFF959499);

  static Color get _active => const Color(0xFF4A3391);

  static SvgPicture home({bool isFilled = false}) {
    return SvgPicture.asset(
      "$_base/home.svg",
      theme: SvgTheme(currentColor: isFilled ? _active : _inactive),
    );
  }
}
