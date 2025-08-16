import 'package:flutter/material.dart';

class ColorData {
  // static const ___ = Color(0xff);
  static const basicColor = Color(0xff53B175);
  static const blackColor = Color(0xff181725);
  static const greyColor = Color(0xff7C7C7C);
  static const hoverColor = Color(0xffF2F3F2);
}

class StyleData {
  static const bigtxt = TextStyle(
    color: ColorData.blackColor,
    fontSize: 26,
    fontWeight: FontWeight.w600,
  );
  static const halftxt = TextStyle(
    color: ColorData.blackColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const smtxt = TextStyle(color: ColorData.greyColor, fontSize: 16);
  static const labeltxt = TextStyle(
    color: ColorData.greyColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const fieldtxt = TextStyle(color: ColorData.blackColor, fontSize: 18);
}

class ConstsData {
  static const padding15 = EdgeInsets.all(15);
  static const pagepadding = EdgeInsets.all(25);
  static var radius10 = BorderRadius.circular(10);
  static var radius15 = BorderRadius.circular(15);
  static const hieght20 = SizedBox(height: 20);
  static const hieght25 = SizedBox(height: 25);
  static const hieght30 = SizedBox(height: 30);
  static const hieght40 = SizedBox(height: 40);
}
