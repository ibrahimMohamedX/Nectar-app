import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/utils/widgets/product.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beverages', style: StyleData.bigtxt),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                // open filter screen
              },
              child: SvgPicture.asset(IconsData.SfilterIcon),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: ConstsData.pagepadding,
          child: Expanded(
            child: GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Product();
              },
            ),
          ),
        ),
      ),
    );
  }
}
