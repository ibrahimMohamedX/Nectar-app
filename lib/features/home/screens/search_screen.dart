import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/utils/widgets/custom_search_field.dart';
import 'package:nectar_app/utils/widgets/product.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: ConstsData.pagepadding,
          child: Column(
            children: [
              Row(
                spacing: 10,
                children: [
                  Expanded(child: CustomSearchField()),
                  SvgPicture.asset(IconsData.SfilterIcon),
                ],
              ),
              ConstsData.hieght30,
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
