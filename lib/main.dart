import 'package:flutter/material.dart';
import 'package:flutter_app/pages/landingPage.dart';
import 'package:flutter_app/pages/movie_details_page.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'model/movie.dart';
var data ;
movie movie1;
Future main()  async {
  var url ="https://api.themoviedb.org/3/movie/top_rated?api_key=107ed75bf9e25ec06bfe9fd33d042579&fbclid=IwAR1fxoG1Hd1VJCnm_LST3tE5ph1osmDDt8Zgp4kvuzwvOmQ2QoJ1NoiPXzk";
  var resp = await http.get(url);
  var x = json.decode(resp.body);
  data=x['results'];
   movie1 =movie(title: data[0]['title'], votes: data[0]['vote_average'] ,imgPath: data[0]['poster_path'],langu: data[0]['original_language']) ;
  runApp(MyApp());

 }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: movieDetailsPage(movie1: movie1),
    );
  }
}

