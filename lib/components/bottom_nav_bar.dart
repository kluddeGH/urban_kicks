import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
 
 class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      

      child: GNav(
        
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[700],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.cyan,
        tabBackgroundColor:const Color.fromARGB(255, 211, 246, 250),
        tabBorderRadius: 24,
        gap: 8,
        tabActiveBorder: Border.all(color: Colors.lightBlue),
        tabs: [
        GButton(icon: Icons.home,
        text: 'Shop',),
        GButton(icon: Icons.shopping_bag_outlined,
        text: 'Cart',)
      
      ]),
    );
  }
}