import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/consts.dart';

class ProfileOption extends StatelessWidget {
  const ProfileOption({
    super.key,
    required this.icon,
    required this.text,
    this.ontap,
  });

  final String icon;
  final String text;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ConstsData.pagepadding,
      child: Row(
        children: [
          SvgPicture.asset(icon, width: 25),
          SizedBox(width: 25),
          Text(text, style: StyleData.halftxt),
          Spacer(),
          InkWell(
            onTap: ontap, // go to option page
            child: Icon(Icons.arrow_forward_ios_sharp),
          ),
        ],
      ),
    );
  }
}
