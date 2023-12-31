import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  const AppIcons._();

  static String get _base => "assets/images/icon";

  static Color get _inactive => const Color(0xFF959499);

  static Color get _active => const Color(0xFF6C34A4);

  static SvgPicture home({bool isFilled = false}) {
    return SvgPicture.asset(
      "$_base/home.svg",
      theme: SvgTheme(currentColor: isFilled ? _active : _inactive),
      height: 19,
    );
  }

  static SvgPicture get locator {
    return SvgPicture.asset(
      "$_base/locator.svg",
      theme: const SvgTheme(currentColor: Color(0xFFBEBEBE)),
    );
  }

  static SvgPicture get alarm => SvgPicture.asset("$_base/alarm.svg");

  static SvgPicture get scanner {
    return SvgPicture.asset(
      "$_base/scanner.svg",
      theme: const SvgTheme(currentColor: Colors.white),
    );
  }

  static SvgPicture calculator({bool isFilled = false}) {
    return SvgPicture.asset(
      "$_base/calculator.svg",
      theme: SvgTheme(currentColor: isFilled ? _active : _inactive),
      height: 19,
    );
  }

  static SvgPicture timer({bool isFilled = false}) {
    return SvgPicture.asset(
      "$_base/timer.svg",
      theme: SvgTheme(currentColor: isFilled ? _active : _inactive),
      height: 19,
    );
  }

  static SvgPicture profile({bool isFilled = false}) {
    return SvgPicture.asset(
      "$_base/profile.svg",
      theme: SvgTheme(currentColor: isFilled ? _active : _inactive),
      height: 19,
      fit: BoxFit.fill,
    );
  }
}
