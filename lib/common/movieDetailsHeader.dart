import 'package:flutter/material.dart';
import 'package:flutter_app/common/ArcBannerImage.dart';
import 'package:flutter_app/common/poster.dart';
import 'package:flutter_app/common/ratinginfo.dart';
import 'package:flutter_app/model/movie.dart';

class movieDetailsHeader extends StatelessWidget {
  movieDetailsHeader({this.movie1});
  final movie movie1;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var movieInformation = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          movie1.title,
          style: textTheme.title,
        ),
        SizedBox(height: 8.0,),
        ratingInformation(),
        SizedBox(height: 12.0),
      ],


    );

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(movie1.bannerPath),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Poster(
                movie1.imgPath,
                height: 180.0,
              ),
              SizedBox(width: 16.0),
              Expanded(child: movieInformation),
            ],
          ),
        ),
      ],

    );
  }
}
