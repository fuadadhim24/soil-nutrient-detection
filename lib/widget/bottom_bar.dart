import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:soil_nutrient_detection/page/home_page.dart';
import 'package:soil_nutrient_detection/page/iot_page.dart';
import 'package:soil_nutrient_detection/shared/theme.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    // title: 'Home',
  ),
  TabItem(
    icon: Icons.shopping_cart_outlined,
    title: 'IoT',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'Profile',
  ),
];

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(),
          IotPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items.map((item) => BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.title ?? '',
        )).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: greenTransparentColor, // Adjust as needed
        backgroundColor: greenColor, // Adjust as needed
        onTap: _onItemTapped,
      ),
    );
  }
}
