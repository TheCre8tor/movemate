import 'package:flutter/material.dart';

class AppPngs {
  const AppPngs._();

  static const String _base = "assets/images/png";

  static Image get headshot => Image.asset("$_base/headshot.jpg");
}
