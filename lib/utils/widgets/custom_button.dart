import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, required this.text});
  final Function()? ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 67,
        width: MediaQuery.sizeOf(context).width * 0.8526570048309179,
        decoration: BoxDecoration(
          color: ColorData.basicColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Text(
            text,
            style: StyleData.bigtxt.copyWith(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
