
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/most_popular.dart';
import 'package:travel_app/widgets/travel_blog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
          Padding(
          padding:  EdgeInsets.only(right: 15),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ]),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Travel Blog",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Expanded(
          child: TravelBlog(),
          flex: 2,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Popular",
                style: TextStyle(fontSize: 19),
              ),
              Text(
                "View All",
                style: TextStyle(fontSize: 12, color: Colors.deepOrange),
              ),
            ],
          ),
        ),
        Expanded(
          child: MostPopular(),
          flex: 2,
        ),
      ]),
    );
  }
}
