import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/explore_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';

class KindLine extends StatelessWidget {
  const KindLine({super.key, this.ontap, required this.kind});
  final void Function()? ontap;
  final String kind;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(kind, style: StyleData.bigtxt),
        InkWell(
          // onTap: ontap, // go to explor page
          onTap: () {
            NavigationData.push(context, ExploreScreen());
          },
          child: Text(
            'See all',
            style: StyleData.smtxt.copyWith(color: ColorData.basicColor),
          ),
        ),
      ],
    );
  }
}
