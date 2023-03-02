import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GNav(
        color: Colors.grey.shade700,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade900,
        gap: 8,
        onTabChange: (index) {},
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
            icon: Icons.favorite_border,
            text: "Favourite",
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
    );
  }
}
