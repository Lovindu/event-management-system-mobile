import 'package:flutter/material.dart';
import 'package:test_app/components/bottom_nav_bar.dart';
import 'package:test_app/pages/home_main.dart';
import 'package:test_app/pages/profile.dart';
import 'package:test_app/pages/search.dart';
import 'package:test_app/pages/ticket.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeMain(),
    Search(),
    Ticket(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        title: Text(
          'Location,City',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffECECFE),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Image.asset(
            'lib/images/icons8-bell-50.png',
            height: 30,
            width: 30,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child: Image.asset(
              'lib/images/icons8-male-user-48.png',
              height: 38,
              width: 38,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
