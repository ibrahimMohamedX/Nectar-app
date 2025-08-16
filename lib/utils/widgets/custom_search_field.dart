import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/search_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        // open search screen
        NavigationData.push(context, SearchScreen());
      },
      cursorColor: ColorData.basicColor,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        hintStyle: StyleData.fieldtxt,
        filled: true,
        fillColor: ColorData.hoverColor,
        border: OutlineInputBorder(
          borderRadius: ConstsData.radius10,
          borderSide: BorderSide(color: ColorData.greyColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: ConstsData.radius10,
          borderSide: BorderSide(color: ColorData.greyColor, width: 2),
        ),
      ),
    );
  }
}
