import 'package:fist_app/core/constants/color_constants.dart';
import 'package:fist_app/core/constants/dismension_constants.dart';
import 'package:fist_app/representation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  static const routeName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
        margin: EdgeInsets.symmetric(
            horizontal: kMediumPadding, vertical: kDefaultPadding),
        items: [
          SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.house,
                size: kDefaultIconSize,
              ),
              title: Text('Home')),
          SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
                size: kDefaultIconSize,
              ),
              title: Text('Favorite')),
          SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.briefcase,
                size: kDefaultIconSize,
              ),
              title: Text('Booking')),
          SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.solidUser,
                size: kDefaultIconSize,
              ),
              title: Text('Profile')),
        ],
      ),
    );
  }
}
