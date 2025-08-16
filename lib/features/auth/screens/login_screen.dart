import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/auth/screens/signup_screen.dart';
import 'package:nectar_app/features/main/main_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';
import 'package:nectar_app/utils/widgets/custom_button.dart';
import 'package:nectar_app/utils/widgets/custom_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Text('Login', style: StyleData.bigtxt),
                SizedBox(height: 15),
                Text('Enter your emails and password', style: StyleData.smtxt),
                ConstsData.hieght40,
                Form(
                  child: Column(
                    children: [
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
                      InkWell(
                        onTap: () {
                          // go to forget password page
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: StyleData.smtxt.copyWith(
                              color: ColorData.blackColor,
                            ),
                          ),
                        ),
                      ),
                      ConstsData.hieght30,
                      CustomButton(
                        text: 'Log In',
                        ontap: () {
                          NavigationData.pushandremoveuntil(
                            context,
                            MainScreen(),
                          );
                        },
                      ),
                      ConstsData.hieght25,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account? ',
                            style: StyleData.smtxt.copyWith(
                              color: ColorData.blackColor,
                            ),
                          ),
                          InkWell(
                            onTap:
                                () => NavigationData.push(
                                  context,
                                  SignupScreen(),
                                ),
                            child: Text(
                              'Singup',
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
