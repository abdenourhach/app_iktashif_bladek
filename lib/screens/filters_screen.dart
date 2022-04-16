import 'package:flutter/material.dart';
import 'package:iktashif_bladk/widgets/app-draweer.dart';

class flterscreen extends StatelessWidget {
  const flterscreen({Key key}) : super(key: key);

  static const screenRoute = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الفلترة'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('هذه صفحة الفلترة'),
      ),
    );
  }
}
