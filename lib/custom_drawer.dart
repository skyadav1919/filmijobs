import 'package:filmijobs/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('assets/images/background.png'))),
      width: size.width * .85,
      height: size.height,
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/Logo.png',
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            DrawerItem(
              onTap: () {
                Navigator.pop(context);
              },
              title: "Home",
              size: size,
              icon: MaterialCommunityIcons.home,
              isSelected: true,
            ),
            DrawerItem(
              onTap: () {

              },
              size: size,
              iconSize: 16,
              icon: FontAwesome5Solid.user_alt,
              title: "My profile",
            ),
            DrawerItem(
              onTap: () {
              },
              iconSize: 20,
              size: size,
              icon: FontAwesome5Solid.shopping_bag,
              title: "Post a Job",
            ),
            DrawerItem(
              onTap: () {
                Navigator.pop(context);
              },
              iconSize: 20,
              size: size,
              icon: FontAwesome5Solid.shopping_bag,
              title: "Applied jobs",
            ),
            DrawerItem(
              size: size,
              onTap: () async {},
              title: "Bookmarks",
              iconSize: 18,
              icon: FontAwesome5Solid.bookmark,
            ),
            DrawerItem(
              size: size,
              onTap: () {
                Navigator.pop(context);

                // Navigator.pushNamed(
                //     context, AppRoutes.feedbackView);
              },
              icon: MaterialCommunityIcons.file_sign,
              title: "Subscription",
            ),
            DrawerItem(
              size: size,
              onTap: () {
                Navigator.pop(context);

                // Navigator.pushNamed(context, AppRoutes.cmsView,
                //     arguments: {"title": "Terms & conditions"});
              },
              icon: Ionicons.md_documents,
              title: "My subscription",
            ),
            DrawerItem(
              size: size,
              onTap: () {
              },
              icon: Entypo.wallet,
              title: "Referral and Wallet",
            ),
            DrawerItem(
              size: size,
              onTap: () {},
              icon: MaterialCommunityIcons.message_draw,
              title: "Review and Ratings",
            ),
            DrawerItem(
              size: size,
              onTap: () {
              },
              icon: Icons.settings,
              title: "Settings",
            ),
            DrawerItem(
              size: size,
              onTap: () {},
              icon: Icons.logout,
              title: "Signout",
            ),
          ],
        ),
      ),
    );
  }
}
