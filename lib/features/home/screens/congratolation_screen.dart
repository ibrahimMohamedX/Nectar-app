import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/main/main_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';

class CongratolationScreen extends StatelessWidget {
  const CongratolationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 150),
                SvgPicture.asset(AssetsData.Scongratolationpic),
                SizedBox(height: 60),
                Text(
                  'Your Order has been\naccepted',
                  style: StyleData.bigtxt.copyWith(fontSize: 28),
                  textAlign: TextAlign.center,
                ),
                ConstsData.hieght20,
                Text(
                  'Your items has been placcd and is on\nit’s way to being processed',
                  style: StyleData.smtxt,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 130),
                CustomButton(text: 'Track Order'),
                InkWell(
                  onTap: () {
                    NavigationData.pushandremoveuntil(context, MainScreen());
                  },
                  child: Container(
                    height: 67,
                    width:
                        MediaQuery.sizeOf(context).width * 0.8526570048309179,
                    child: Center(
                      child: Text('Back to home', style: StyleData.halftxt),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
