import 'package:flutter/material.dart';
import 'package:iktashif_bladk/aPP_data.dart';
import 'package:iktashif_bladk/models/trip.dart';

class TripdetailsScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

//widgets method por evity repition

  Widget Buildsectiontitle(BuildContext context, String titletext) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        titletext,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

//widgets method por evity repition

  Widget buildListviewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Tripid = ModalRoute.of(context).settings.arguments as String;

    final selectedTrip = Trips_data.firstWhere((Trip) => Trip.id == Tripid);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTrip.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Buildsectiontitle(context, 'الانشطة'),
            buildListviewContainer(
              ListView.builder(
                itemCount: selectedTrip.activities.length,
                itemBuilder: (ctx, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedTrip.activities[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Buildsectiontitle(context, "البرنامج اليومي"),
            buildListviewContainer(
              ListView.builder(
                itemCount: selectedTrip.program.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Text('يوم ${index + 1}')),
                      title: Text(selectedTrip.program[index]),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
