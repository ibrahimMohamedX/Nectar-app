import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/widgets/geroceries.dart';
import 'package:nectar_app/features/home/widgets/home_product_list.dart';
import 'package:nectar_app/features/home/widgets/kind_line.dart';
import 'package:nectar_app/utils/widgets/custom_search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: ConstsData.pagepadding,
            child: Column(
              children: [
                SvgPicture.asset(AssetsData.Slogo, width: 30),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Color(0xff4C4F4D)),
                    Text(
                      'CARIO, EGYPT',
                      style: StyleData.smtxt.copyWith(
                        color: Color(0xff4C4F4D),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ConstsData.hieght20,
                CustomSearchField(),
                ConstsData.hieght20,
                KindLine(kind: 'Exclusive Offer'), // put ontap function
                ConstsData.hieght20,
                HomeProductListView(),
                ConstsData.hieght30,
                KindLine(kind: 'Best Selling'), // put ontap function
                ConstsData.hieght20,
                HomeProductListView(),
                ConstsData.hieght30,
                KindLine(kind: 'Groceries'),
                ConstsData.hieght20,
                SizedBox(
                  height: 105,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GroceriesType(
                        text: 'Pusles',
                        img: AssetsData.Ipusles,
                        color: Color(0xffF8A44C),
                      ),
                      SizedBox(width: 10),
                      GroceriesType(
                        text: 'rice',
                        img: AssetsData.Irice,
                        color: Color(0xff53B175),
                      ),
                    ],
                  ),
                ),
                ConstsData.hieght20,
                HomeProductListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
