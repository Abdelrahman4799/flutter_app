import 'package:flutter/material.dart';
import 'package:flutter_app/model/movie.dart';
import 'dart:ui';
import 'package:flutter_app/styling/colors.dart';
import 'package:flutter_app/styling/textStyle.dart';
class movieNameWidget extends StatelessWidget {

  final movie movie1;
  movieNameWidget({this.movie1});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20.0 ,
      color: primaryColor ,
      shape: customShapeBorder(),
      child: Padding(
        padding: EdgeInsets.only(top :18.0, left :16.0,right: 24.0,bottom: 10.0),
        child: Text(
          movie1.langu,
          style: forumNameTextStyle,
        ),
      ),
    );
  }
}

class customShapeBorder extends ShapeBorder {
  final double distanceFromWall = 12;
  final double controlPointDistanceFromWall = 2;

  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return getClip(Size(130.0, 60.0));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }

  Path getClip(Size size) {
    Path clippedPath = Path();
    clippedPath.moveTo(0 + distanceFromWall, 0);
    clippedPath.quadraticBezierTo(0 + controlPointDistanceFromWall,
        0 + controlPointDistanceFromWall, 0, 0 + distanceFromWall);
    clippedPath.lineTo(0, size.height - distanceFromWall);
    clippedPath.quadraticBezierTo(
        0 + controlPointDistanceFromWall,
        size.height - controlPointDistanceFromWall,
        0 + distanceFromWall,
        size.height);
    clippedPath.lineTo(size.width - distanceFromWall, size.height);
    clippedPath.quadraticBezierTo(
        size.width - controlPointDistanceFromWall,
        size.height - controlPointDistanceFromWall,
        size.width,
        size.height - distanceFromWall);
    clippedPath.lineTo(size.width, size.height * 0.6);
    clippedPath.quadraticBezierTo(
        size.width - 1,
        size.height * 0.6 - distanceFromWall,
        size.width - distanceFromWall,
        size.height * 0.6 - distanceFromWall - 3);
    clippedPath.lineTo(0 + distanceFromWall + 6, 0);
    clippedPath.close();
    return clippedPath;
  }
}