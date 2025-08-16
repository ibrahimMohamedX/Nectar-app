import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/widgets/category_type.dart';
import 'package:nectar_app/utils/widgets/custom_search_field.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Product', style: StyleData.bigtxt),
        centerTitle: true,
      ),
      body: Container(
        padding: ConstsData.pagepadding,
        child: Column(
          children: [
            CustomSearchField(),
            ConstsData.hieght20,
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return CategoryType();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
