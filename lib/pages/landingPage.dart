import 'package:flutter/material.dart';
import 'package:flutter_app/common/appBackground.dart';
import 'package:flutter_app/common/horizantolTabLayout.dart';
import 'package:flutter_app/styling/textStyle.dart';
class landingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            appBackground(),

            Center(
              child: horizontalTabLayout(),
            ),
          ],

    ),
    );
  }
}

