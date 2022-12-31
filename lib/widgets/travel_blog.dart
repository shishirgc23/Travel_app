import 'package:flutter/material.dart';
import 'package:travel_app/detail.dart';

import '../model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pageCtrl = PageController(viewportFraction: 1.1);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageCtrl,
      itemCount: _list.length,
      itemBuilder: ((context, index) {
        var travel = _list[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailPage(travel: travel,)));
          },
          child: Stack(
            children: [
              Padding(
                padding:
                   const  EdgeInsets.only(top: 15, right: 30, bottom: 15, left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    travel.url,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 80,
                  left: 20,
                  child: Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Text(
                          travel.location,
                          style:  const  TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            travel.name,
                            style:   const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                child:  Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
                bottom: 0,
                right: 55,
              )
            ],
          ),
        );
      }),
    );
  }
}
