import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/auth/screens/login_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetsData.Iwelcomepic,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 90,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SvgPicture.asset(AssetsData.SlogoWhite),
                ConstsData.hieght20,
                Text(
                  'Welcome\nto our store',
                  style: StyleData.bigtxt.copyWith(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: StyleData.smtxt,
                ),
                ConstsData.hieght40,
                CustomButton(
                  text: 'Get Started',
                  ontap: () {
                    NavigationData.pushreplace(context, LoginScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
