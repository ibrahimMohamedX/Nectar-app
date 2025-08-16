import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/splash/welcome_screen.dart';
import 'package:nectar_app/utils/helper/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), () {
      NavigationData.pushreplace(context, WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.basicColor,
      body: Center(child: SvgPicture.asset(AssetsData.SsplashLogo)),
    );
  }
}
