import 'package:flutter/material.dart';
class movie {
  String title;
  int votes;
  String imgPath = "assets/t.png";
  movie({this.title,this.votes});
}



movie saw = movie(title: "saw" ,votes: 55);
