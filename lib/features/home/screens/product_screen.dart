import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/cart_screen.dart';
import 'package:nectar_app/features/home/screens/favorite_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/Line.dart';
import 'package:nectar_app/utils/widgets/counter.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorData.hoverColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                NavigationData.push(context, CartScreen());
              },
              child: SvgPicture.asset(IconsData.ScartAppbar, width: 20),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                  color: ColorData.hoverColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Image.asset(AssetsData.Iapplepic, width: 320),
                ),
              ),
              ConstsData.hieght30,
              Padding(
                padding: ConstsData.pagepadding,
                child: Column(
                  children: [
                    // name and add like button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Natural Red Apple', style: StyleData.bigtxt),
                            Text('1kg, price', style: StyleData.smtxt),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            NavigationData.push(context, FavoriteScreen());
                          },
                          child: SvgPicture.asset(IconsData.SlikeOutline),
                        ),
                      ],
                    ),
                    ConstsData.hieght30,
                    // counter and price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Counter(),
                        Text('\$4.99', style: StyleData.bigtxt),
                      ],
                    ),
                    ConstsData.hieght30,
                    Line(),
                    ConstsData.hieght20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Product Details', style: StyleData.halftxt),
                        Icon(Icons.keyboard_arrow_down_sharp, size: 30),
                      ],
                    ),
                    Text(
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                      style: StyleData.smtxt,
                    ),
                    ConstsData.hieght20,
                    Line(),
                    ConstsData.hieght20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nutrirtions', style: StyleData.halftxt),
                        Icon(Icons.arrow_forward_ios, size: 25),
                      ],
                    ),
                    ConstsData.hieght20,
                    Line(),
                    ConstsData.hieght20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Review', style: StyleData.halftxt),
                        Icon(Icons.arrow_forward_ios, size: 25),
                      ],
                    ),
                    ConstsData.hieght20,
                    CustomButton(text: 'Add To Basket'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
