import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';

class GroceriesType extends StatelessWidget {
  const GroceriesType({
    super.key,
    this.ontap,
    required this.img,
    required this.text,
    required this.color,
  });

  final void Function()? ontap;
  final String img;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap, // ontap function
      child: Container(
        width: 250,
        height: 105,
        padding: ConstsData.padding15,
        decoration: BoxDecoration(
          color: color,
          borderRadius: ConstsData.radius15,
        ),
        child: Row(
          spacing: 10,
          children: [
            Image.asset(img, width: 72),
            Text(text, style: StyleData.bigtxt.copyWith(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
