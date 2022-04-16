import 'package:flutter/material.dart';
import 'package:iktashif_bladk/screens/Tabs-screeen.dart';
import 'package:iktashif_bladk/screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.blue),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'ElMessiri', fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        //......................
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: Text(
              'دليلك السياحي',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 20),
          buildListTitle(
            'الرحلات',
            Icons.card_travel,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTitle(
            'الفلترة',
            Icons.filter_list,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(flterscreen.screenRoute);
            },
          ),
        ],
      ),
    );
  }
}
