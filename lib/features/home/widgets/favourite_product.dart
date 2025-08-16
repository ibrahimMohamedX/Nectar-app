import 'package:flutter/material.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/product_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';

class FavoriteProduct extends StatelessWidget {
  const FavoriteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.Ispritepic, height: 60),
        SizedBox(width: 20),
        Column(
          children: [
            Text('Sprite Can', style: StyleData.halftxt),
            Text('325ml, price', style: StyleData.smtxt),
          ],
        ),
        Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('\$4.99', style: StyleData.halftxt),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                NavigationData.push(context, ProductScreen());
              },
              child: Icon(Icons.arrow_forward_ios, size: 30),
            ),
          ],
        ),
      ],
    );
  }
}
