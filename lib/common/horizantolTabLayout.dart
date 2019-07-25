import 'package:flutter/material.dart';
import 'package:flutter_app/model/movie.dart';
import 'package:flutter_app/common/movieCard.dart';
class horizontalTabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -20,
              bottom: 0,
            top: 0,
            width: 110.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 80),
            ),
          ),

          Padding(
            padding: EdgeInsets.only( left :65.0,top: 140.0 ,bottom: 140.0), //40.40
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                movieCard(movie1: saw),
                movieCard(movie1: saw)

              ],
            ),
          ),
        ],
      ),
    );

  }
}
