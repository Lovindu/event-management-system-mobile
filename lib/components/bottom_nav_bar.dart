import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            gap: 8,
            color: Colors.black,
            rippleColor: Colors.purple[100]!,
            hoverColor: Colors.purple[100]!,
            activeColor: Color(0xff4B38AC),
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            //tabBorder: Border.all(color: Colors.grey, width: 1),
            //tabActiveBorder: Border.all(color: Colors.black, width: 1),
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.airplane_ticket,
                text: 'Tickets',
              ),
              GButton(
                /*
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(''),),*/
                icon: Icons.supervised_user_circle,
                text: 'Profile',
              ),
            ]),
      ),
    );
  }
}
