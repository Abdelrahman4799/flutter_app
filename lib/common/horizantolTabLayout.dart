import 'package:flutter/material.dart';
import 'package:flutter_app/model/movie.dart';
import 'package:flutter_app/common/movieCard.dart';
import 'getdata.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';



List data;
String url ="https://api.themoviedb.org/3/movie/top_rated?api_key=107ed75bf9e25ec06bfe9fd33d042579&fbclid=IwAR1fxoG1Hd1VJCnm_LST3tE5ph1osmDDt8Zgp4kvuzwvOmQ2QoJ1NoiPXzk";
Future<List> getJson()async{
  var resp = await http.get(
      Uri.encodeFull(url),
  );
print(resp.body);
}

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
                movieCard(movie1: movie(title: "need for speed",votes: 9,langu: "EN",imgPath: "assets/need.png"),),
                movieCard(movie1: movie(title: "toy story",votes: 10,langu: "FR",imgPath: "assets/toy.png"),),
                movieCard(movie1: movie(title: "saw",votes: 3,langu: "EN",imgPath: "assets/saw.png"),),
                movieCard(movie1: movie(title: "الفيل الازرق ",votes: 5,langu: "FR",imgPath: "assets/f.png"),),


              ],




            ),
          ),
        ],
      ),
    );

  }
}

