import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/auth/screens/location_screen.dart';
import 'package:nectar_app/features/auth/screens/login_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';
import 'package:nectar_app/utils/widgets/custom_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: ConstsData.pagepadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(AssetsData.Slogo),
                ),
                SizedBox(height: 100),
                Text('Sign Up', style: StyleData.bigtxt),
                SizedBox(height: 15),
                Text(
                  'Enter your credentials to continue',
                  style: StyleData.smtxt,
                ),
                ConstsData.hieght40,
                Form(
                  child: Column(
                    children: [
                      CustomField(
                        label: 'Username',
                        hintText: 'Ibrahim Mohamed Ibrahim',
                      ),
                      ConstsData.hieght30,
                      CustomField(
                        label: 'Email',
                        hintText: 'imshuvo97@gmail.com',
                      ),
                      ConstsData.hieght30,
                      CustomField(
                        label: 'Password',
                        hintText: 'ABcd12#@',
                        ispass: true,
                        afterIcon: SvgPicture.asset(IconsData.ShiddenEye),
                      ),
                      ConstsData.hieght20,
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'By continuing you agree to our Terms of Service and Privacy Policy.',
                              style: StyleData.smtxt,
                            ),
                            TextSpan(
                              text: 'Terms of Service ',
                              style: StyleData.smtxt.copyWith(
                                color: ColorData.basicColor,
                              ),
                            ),
                            TextSpan(text: 'and ', style: StyleData.smtxt),
                            TextSpan(
                              text: 'Privacy Policy.',
                              style: StyleData.smtxt.copyWith(
                                color: ColorData.basicColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ConstsData.hieght30,
                      CustomButton(
                        text: 'Sign Up',
                        ontap:
                            () =>
                                NavigationData.push(context, LocationScreen()),
                      ),
                      ConstsData.hieght25,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an acount? ',
                            style: StyleData.smtxt.copyWith(
                              color: ColorData.blackColor,
                            ),
                          ),
                          InkWell(
                            onTap:
                                () =>
                                    NavigationData.push(context, LoginScreen()),
                            child: Text(
                              'Login',
                              style: StyleData.smtxt.copyWith(
                                color: ColorData.basicColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
