

import 'package:doctorconnext/screens/HistoryPage.dart';
import 'package:doctorconnext/screens/NavigationPage.dart';
import 'package:doctorconnext/screens/ProfilePage.dart';
import 'package:flutter/material.dart';

class NavigationBarPage extends StatefulWidget {

  NavigationBarPage({Key? key}) : super(key: key);

  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final screen = [
    NavigationPage(),
    HistoryPage(),
  ];

  int _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screen,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Theme.of(context).primaryColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: (index) {
               setState(() {
                 _currentIndex = index;
               });
            },
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
               // backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                ),
                label: 'History',
               // backgroundColor: Theme.of(context).primaryColor,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
