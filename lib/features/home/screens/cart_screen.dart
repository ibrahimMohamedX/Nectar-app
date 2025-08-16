import 'package:flutter/material.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/congratolation_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/Line.dart';
import 'package:nectar_app/utils/widgets/counter.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: StyleData.bigtxt),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstsData.hieght20,
              Line(),
              Padding(
                padding: ConstsData.pagepadding,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CartProduct();
                  },
                  separatorBuilder: (context, index) {
                    return Column(
                      children: [
                        ConstsData.hieght30,
                        Line(),
                        ConstsData.hieght30,
                      ],
                    );
                  },
                  itemCount: 3,
                ),
              ),

              CustomButton(
                text: 'Go To Checkout',
                ontap: () {
                  NavigationData.push(context, CongratolationScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartProduct extends StatelessWidget {
  const CartProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Image.asset(AssetsData.Ispritepic, height: 60),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sprite Can', style: StyleData.halftxt),
                    Icon(Icons.close, size: 30),
                  ],
                ),
                Text('325ml, price', style: StyleData.smtxt),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Counter(),
                    Text('\$4.99', style: StyleData.halftxt),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
