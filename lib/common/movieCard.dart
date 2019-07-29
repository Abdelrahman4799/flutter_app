import 'package:flutter/material.dart';
import 'package:flutter_app/common/movieCard.dart';
import 'package:flutter_app/model/movie.dart';
import 'dart:ui';
import 'package:flutter_app/common/movieNameWedgit.dart';
import 'package:flutter_app/model/movie.dart';

import 'movieDetailsWidget.dart';

class movieCard extends StatelessWidget {
  final movie movie1;

  movieCard({this.movie1});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        elevation: 20.0,
        margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Stack(
            children: <Widget>[
              
                Image.asset(movie1.imgPath,
                width: 280.0,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: movieDetailsWidget(movie1:movie1),
              ),
              Positioned(
                left: 0,
                bottom: 80.0,
                child: movieNameWidget(movie1: movie1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
