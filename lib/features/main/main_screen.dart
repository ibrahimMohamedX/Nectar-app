import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/screens/cart_screen.dart';
import 'package:nectar_app/features/home/screens/explore_screen.dart';
import 'package:nectar_app/features/home/screens/favorite_screen.dart';
import 'package:nectar_app/features/home/screens/home_screen.dart';
import 'package:nectar_app/features/home/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final List<Widget> pages = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: ColorData.blackColor,
        selectedItemColor: ColorData.basicColor,
        selectedFontSize: 14,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: 'Shop',
            icon: SvgPicture.asset(
              IconsData.SshopIcon,
              color: index == 0 ? ColorData.basicColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: SvgPicture.asset(
              IconsData.SexploreIcon,
              color: index == 1 ? ColorData.basicColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: SvgPicture.asset(
              IconsData.ScartIcon,
              color: index == 2 ? ColorData.basicColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: SvgPicture.asset(
              IconsData.SfavoriteIcon,
              color: index == 3 ? ColorData.basicColor : null,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(
              IconsData.SprofileIcon,
              color: index == 4 ? ColorData.basicColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
