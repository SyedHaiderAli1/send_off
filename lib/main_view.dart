import 'package:flutter/material.dart';
import 'package:send_off/dummy_screens/cart.dart';
import 'package:send_off/dummy_screens/categories.dart';
import 'package:send_off/dummy_screens/profile.dart';
import 'package:send_off/dummy_screens/search.dart';

import '../../app/modules/home/views/home_view.dart';

class MainAppScreen extends StatefulWidget {
  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeView(),
    const SearchScreen(),
    const CategoriesScreen(),
    const ProfileScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_rounded,
              color: Colors.black,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_2_rounded,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
