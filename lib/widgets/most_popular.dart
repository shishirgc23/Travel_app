import 'package:flutter/material.dart';

import '../detail.dart';
import '../model/travel.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.generateMostPopular();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(top: 15, right: 30, bottom: 15, left: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          var travel = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailPage(
                        travel: travel,
                      )));
            },
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  width: 200,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Text(
                          travel.location,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            travel.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  )),
            ]),
          );
        }),
        separatorBuilder: (context, index) => SizedBox(
              width: 15,
            ),
        itemCount: _list.length);
  }
}
