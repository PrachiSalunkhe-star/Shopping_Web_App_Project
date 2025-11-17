import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/Product.dart';
import 'package:newapp/pages/Contact.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      initialSelectedTab: _getTabName(currentIndex),
      labels: const ["Home", "Products", "Contact"],
      icons: const [Icons.home, Icons.shopping_bag, Icons.phone],

      // 🔥 Stylish Animation Colors
      tabIconColor: Colors.grey,
      tabSelectedColor: const Color.fromARGB(255, 223, 163, 73),
      tabBarColor: Colors.white,
      textStyle: const TextStyle(color: Color.fromARGB(255, 174, 108, 10), fontWeight: FontWeight.bold),

      onTabItemSelected: (int index) {
        if (index == currentIndex) return;

        if (index == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  HomePage()),
          );
        } else if (index == 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  ProductPage()),
          );
        } else if (index == 2) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const ContactPage()),
          );
        }
      },
    );
  }

  // Convert index → label
  String _getTabName(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "Products";
      case 2:
        return "Contact";
      default:
        return "Home";
    }
  }
}