import 'package:flutter/material.dart';
import 'package:nectar_app/utils/widgets/product.dart';

class HomeProductListView extends StatelessWidget {
  const HomeProductListView({super.key});
  // here put param that take list of products

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 262,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Product();
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: 12,
      ),
    );
  }
}
