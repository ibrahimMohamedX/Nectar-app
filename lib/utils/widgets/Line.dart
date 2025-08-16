import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: ColorData.greyColor,
    );
  }
}
