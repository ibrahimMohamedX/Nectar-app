import 'package:flutter/material.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/category_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationData.push(context, CategoryScreen());
      },
      child: Container(
        width: 175,
        height: 200,
        padding: ConstsData.padding15,
        decoration: BoxDecoration(
          color: Color(0xff53B175).withValues(alpha: 0.1),
          border: Border.all(color: Color(0xff53B175), width: 2),
          borderRadius: ConstsData.radius15,
        ),
        child: Column(
          children: [
            Image.asset(AssetsData.Ifroutspic, width: 111),
            ConstsData.hieght30,
            Text(
              'Frash Fruits\n& Vegetable',
              textAlign: TextAlign.center,
              style: StyleData.halftxt,
            ),
          ],
        ),
      ),
    );
  }
}
