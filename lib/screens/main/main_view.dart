import 'package:flutter/material.dart';
import 'package:music_app/screens/home/home_view.dart';
import 'package:music_app/utils/colors.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Category',
      style: optionStyle,
    ),
    Text(
      'My Songs',
      style: optionStyle,
    ),
    Text(
      'More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade200,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'My Song',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hive_rounded),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kprimaryClr,
        unselectedItemColor: ksecondaryClr,
        onTap: _onItemTapped,
      ),
    );
  }
}
