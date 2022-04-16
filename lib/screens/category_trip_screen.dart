import 'package:flutter/material.dart';
import 'package:iktashif_bladk/models/trip.dart';
import 'package:iktashif_bladk/widgets/trips_item.dart';
import '../models/trip.dart';
import '../aPP_data.dart';

class CategoryTripScreen extends StatelessWidget {
  static const ScreenRoutes = '/category-trips';
/*
  final String categoryId;
  final String categoryTitle;
  CategoryTripScreen(this.categoryId, this.categoryTitle);
*/
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryid = routeArgument['id'];
    final categoryTitle = routeArgument['title'];

    final filteredTrips = Trips_data.where((Trip) {
      return Trip.categories.contains(categoryid);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripsItem(
                id: filteredTrips[index].id,
                title: filteredTrips[index].title,
                imageUrl: filteredTrips[index].imageUrl,
                duration: filteredTrips[index].duration,
                season: filteredTrips[index].season,
                tripType: filteredTrips[index].tripType);
          },
          itemCount: filteredTrips.length,
        ));
  }
}
