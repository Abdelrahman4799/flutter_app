import"package:flutter/material.dart";
import 'package:flutter_app/common/movieDetailsHeader.dart';
import 'package:flutter_app/model/movie.dart';

class movieDetailsPage extends StatelessWidget {
  movieDetailsPage({this.movie1});
   movie movie1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            movieDetailsHeader(movie1: movie1),

          ],

        ),
      ),

    );
  }
}


