import 'package:flutter/material.dart';
import 'package:flutter_app/model/movie.dart';

class ratingInformation extends StatelessWidget {
  ratingInformation({this.movie1});
  final movie movie1;

  Widget _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];
    double starCount = movie1.votes/2;
    for (var i = 1; i <= 5; i++) {
      var color = i <= starCount ? theme.accentColor : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var ratingCaptionStyle = textTheme.caption.copyWith(color: Colors.black45);

    var numericRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          movie1.votes.toString(),
          style: textTheme.title.copyWith(
            fontWeight: FontWeight.w400,
            color: theme.accentColor,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          'Ratings',
          style: ratingCaptionStyle,
        ),
      ],
    );

    var starRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRatingBar(theme),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 4.0),
          child: Text(
            'Grade now',
            style: ratingCaptionStyle,
          ),
        ),
      ],
    );

    return  Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        numericRating,
        SizedBox(width: 16.0),
        starRating,
      ],
    );
  }
}
