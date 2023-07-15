import 'package:bellsi_app/Product/ListProduct.dart';
import 'package:bellsi_app/Screens/AccountScreen.dart';
import 'package:bellsi_app/Screens/HomeScreen.dart';
import 'package:bellsi_app/Screens/SearchScreen.dart';
import 'package:bellsi_app/Screens/ShoppingScreens.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ShoppingScreen(),
    Search(),
    Account(),
    ListProduct()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(
        iconSize: 22,
        haptic: true,
        backgroundColor: Colors.cyan,
        color: Colors.white,
        activeColor: Colors.cyanAccent,
        gap: 4,
        padding: EdgeInsets.all(16),
        // tabActiveBorder: Border.all(color: Colors.black, width: 1),
        tabBorder: Border.all(color: Colors.blue, width: 1),
        curve: Curves.easeOutExpo,
        tabShadow: [
          BoxShadow(color: Colors.blue.withOpacity(0.5), blurRadius: 8)
        ],
        onTabChange: _onItemTapped,
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.shopping_cart, text: 'Shopping'),
          GButton(icon: Icons.search, text: 'Search'),
          GButton(icon: Icons.account_circle, text: 'Account')
        ],
      ),
    );
  }
}
