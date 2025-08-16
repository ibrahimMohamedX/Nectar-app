import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/widgets/favourite_product.dart';
import 'package:nectar_app/utils/widgets/Line.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites', style: StyleData.bigtxt),
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
                    return FavoriteProduct();
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
                  itemCount: 5,
                ),
              ),
              CustomButton(text: 'Add All To Cart'),
            ],
          ),
        ),
      ),
    );
  }
}
