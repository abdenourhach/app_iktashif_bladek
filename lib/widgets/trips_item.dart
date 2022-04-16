import 'package:flutter/material.dart';
import 'package:iktashif_bladk/models/trip.dart';
import 'package:iktashif_bladk/screens/trip-details.-screen.dart';

class TripsItem extends StatelessWidget {
  final String id;

  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  TripsItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.season,
    @required this.tripType,
  });

  String get seasontext {
    switch (season) {
      case Season.Winter:
        return "شتاء";
        break;

      case Season.Spring:
        return "ربيع";
        break;
      case Season.Summer:
        return "صيف";
        break;
      case Season.Autumn:
        return "خريف";
        break;
      default:
        return "غير معروف";
    }
  }

  String get TriptypeText {
    switch (tripType) {
      case TripType.Exploration:
        return "استكشاف";
        break;

      case TripType.Recovery:
        return 'نقاهة';
        break;
      case TripType.Activities:
        return "انشطة";
        break;
      case TripType.Therapy:
        return "معالجة";
        break;
      default:
        return "غير معروف";
    }
  }

  void selectTrips(context) {
    Navigator.of(context)
        .pushNamed(TripdetailsScreen.screenRoute, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrips(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.9),
                      ],
                          stops: [
                        0.6,
                        1
                      ])),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration ايام'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasontext),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(TriptypeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
