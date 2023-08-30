// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tony_shop/tabs/booking_tab.dart';
import 'package:tony_shop/tabs/home_tabs.dart';
import 'package:tony_shop/tabs/food_menu.dart';
import 'package:tony_shop/tabs/cart_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double height, width;
  int _selectedIndex = 0;
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    Home_tab(),
    food_menu(),
    cart_tab(),
    booking_tab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: Container(
            color: Colors.black,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: GNav(
                selectedIndex: _selectedIndex,
                gap: 8,
                onTabChange: (value) {
                  _onTapped(value);
                },
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                color: Color.fromARGB(255, 255, 255, 255),
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(255, 211, 86, 3),
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    iconSize: 30,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.food_bank_sharp,
                    iconSize: 30,
                    text: 'Food menu',
                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    iconSize: 30,
                    text: 'cart',
                  ),
                  GButton(
                    icon: Icons.book_online_rounded,
                    text: 'My booking',
                    iconSize: 30,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
