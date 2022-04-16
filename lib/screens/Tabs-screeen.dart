import 'package:flutter/material.dart';
import 'package:iktashif_bladk/screens/favoritescreen.dart';
import 'package:iktashif_bladk/screens/screencategory.dart';

import '../widgets/app-draweer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {
      'Screen': screenCategory(),
      'Title': ' تصنيفات الرحلات',
    },
    {
      'Screen': FavoriteScreen(),
      'Title': ' الرحلات المفضلة ',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_screens[_selectedScreenIndex]['Title'])),
      ),
      drawer: AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'التصنيفات ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'المفضلة ',
          ),
        ],
      ),
    );
  }
}
