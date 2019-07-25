import 'package:flutter/material.dart';
import 'package:flutter_app/styling/colors.dart';

class appBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;
        return Stack(
          children: <Widget>[
            Container(
              color: backGroundColor,
            ),
            Positioned(
              left: -(height/2 - width/2),
              bottom: height * 0.25,
              child: Container(
                height: height,
                width: height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                      color: firstColor
                ),
              ),
            ),
            Positioned(
              left: width * .15,
              top: -width * 0.7,
              child: Container(
                height: width * 1.5,
                width: width * 1.5,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondColor
                ),
              ),
            ),
            Positioned(
              right: -width * 0.2,
              top: -50 ,
              child: Container(
                height: width * 0.6 ,
                width: width * 0.6 ,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: thirddColor
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
