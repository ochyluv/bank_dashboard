import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kTertiaryColor5,
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                const Icon(
                  Icons.add_box,
                  color: kBlackColor,
                ),
                Expanded(
                  child: Text(
                    'magicBank',
                    style: kHeading3TextStyle,
                  ),
                )
              ],
            ),
          ),
          DrawerListTile(
            title: "Home",
            icon: Icons.home,
            press: () {},
          ),
          DrawerListTile(
            title: "Cards",
            icon: Icons.card_giftcard,
            press: () {},
          ),
          DrawerListTile(
            title: "Transaction",
            icon: Icons.transform,
            press: () {},
          ),
          DrawerListTile(
            title: "Statistics",
            icon: Icons.calculate,
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            icon: Icons.settings,
            press: () {},
          ),
          DrawerListTile(
            title: "Logout",
            icon: Icons.logout,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: kBlackColor,
      ),
      title: Text(
        title,
        style: const TextStyle(color: kBlackColor),
      ),
    );
  }
}
