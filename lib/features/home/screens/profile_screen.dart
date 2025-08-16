import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/assets.dart';
import 'package:nectar_app/core/consts.dart';
import 'package:nectar_app/features/home/widgets/profile_option.dart';
import 'package:nectar_app/utils/widgets/Line.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      IconsData.SmarketprofileIcon,
      IconsData.SprofiledetailsIcon,
      IconsData.SlocationIcon,
      IconsData.SpaymentIcon,
      IconsData.SpromocodeIcon,
      IconsData.SnotificationIcon,
      IconsData.ShelpIcon,
      IconsData.SaboutIcon,
    ];
    List<String> names = [
      'Orders',
      'My Details',
      'Delivery Address',
      'Payment Methods',
      'Promo Cord',
      'Notifecations',
      'Help',
      'About',
    ];
    // List<Function()?> funcs = [];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstsData.hieght20,
              ListTile(
                leading: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(borderRadius: ConstsData.radius15),
                  child: Image.asset(AssetsData.Iprofilepic),
                ),
                title: Row(
                  spacing: 10,
                  children: [
                    Text(
                      'Ibrahim Mohamed',
                      style: StyleData.bigtxt.copyWith(fontSize: 20),
                    ),
                    SvgPicture.asset(IconsData.SeditIcon, width: 20),
                  ],
                ),
                subtitle: Text('Ibrahim123@gmail.com', style: StyleData.smtxt),
              ),
              ConstsData.hieght30,
              Line(),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ProfileOption(icon: icons[index], text: names[index]);
                },
                separatorBuilder: (context, index) {
                  return Line();
                },
                itemCount: names.length,
              ),
              InkWell(
                onTap: () {
                  // logout function
                },
                child: Container(
                  height: 67,
                  width: MediaQuery.sizeOf(context).width * 0.8526570048309179,
                  decoration: BoxDecoration(
                    color: ColorData.hoverColor,
                    border: Border.all(width: 2, color: ColorData.basicColor),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: StyleData.bigtxt.copyWith(
                        color: ColorData.basicColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
