import 'package:flutter/material.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/product_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => NavigationData.push(context, ProductScreen()),
      child: Container(
        width: 173,
        height: 262,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26, width: 1),
          borderRadius: ConstsData.radius15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AssetsData.Iapplepic),
            ConstsData.hieght30,
            Text('Red Apple', style: StyleData.bigtxt.copyWith(fontSize: 18)),
            Text('1kg, Priceg', style: StyleData.smtxt),
            ConstsData.hieght20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$4,99', style: StyleData.bigtxt),
                InkWell(
                  onTap: () {
                    // add to card
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: ColorData.basicColor,
                      borderRadius: ConstsData.radius15,
                    ),
                    child: Center(
                      child: Icon(Icons.add, size: 35, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
