import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/main/main_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';
import 'package:nectar_app/utils/widgets/custom_field.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          padding: ConstsData.pagepadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstsData.hieght40,
                SvgPicture.asset(AssetsData.Slocationpic),
                ConstsData.hieght40,
                Text(
                  'Select Your Location',
                  style: StyleData.bigtxt.copyWith(fontSize: 26),
                ),
                SizedBox(height: 15),
                Text(
                  'Swithch on your location to stay in tune with what’s happening in your area',
                  textAlign: TextAlign.center,
                  style: StyleData.smtxt,
                ),
                SizedBox(height: 160),
                CustomField(label: 'Address', hintText: 'Cairo, Egypt'),
                SizedBox(height: 80),
                CustomButton(
                  text: 'Submit',
                  ontap: () {
                    NavigationData.pushandremoveuntil(context, MainScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
