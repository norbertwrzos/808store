import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'all_beats.dart';
import 'home_page.dart';
import 'my_cart.dart';
import 'settings_page.dart';
import 'user_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomePage(),
    AllBeats(),
    MyCart(),
    UserPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: _navigateBottomBar,
          color: Colors.grey.shade700,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade900,
          gap: 8,
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.format_list_bulleted_rounded,
              text: "All beats",
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: "My Cart",
            ),
            GButton(
              icon: Icons.person,
              text: "My Account",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            )
          ],
        ),
      ),
    );
  }
}
