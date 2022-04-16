import 'package:flutter/material.dart';
import 'package:iktashif_bladk/models/category.dart';
import 'package:iktashif_bladk/screens/Tabs-screeen.dart';
import 'package:iktashif_bladk/screens/category_trip_screen.dart';
import 'package:iktashif_bladk/screens/filters_screen.dart';
import 'package:iktashif_bladk/screens/screencategory.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iktashif_bladk/screens/trip-details.-screen.dart';
import 'package:iktashif_bladk/screens/trip-details.-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', ''), // English, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'ELMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontFamily: 'ELMessiri',
                fontWeight: FontWeight.bold,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'ELMessiri',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryTripScreen.ScreenRoutes: (ctx) => CategoryTripScreen(),
        TripdetailsScreen.screenRoute: (ctx) => TripdetailsScreen(),
        flterscreen.screenRoute: (ctx) => flterscreen(),
      },
    );
  }
}
