import 'package:flutter/material.dart';
import 'package:iktashif_bladk/screens/category_trip_screen.dart';
import '../aPP_data.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  // ignore: use_key_in_widget_constructors
  const CategoryItem(this.id, this.title, this.imageurl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryTripScreen.ScreenRoutes, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageurl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
