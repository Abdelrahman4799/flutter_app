import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
class getData{
  String url ="https://api.themoviedb.org/3/movie/top_rated?api_key=107ed75bf9e25ec06bfe9fd33d042579&fbclid=IwAR1fxoG1Hd1VJCnm_LST3tE5ph1osmDDt8Zgp4kvuzwvOmQ2QoJ1NoiPXzk";

  Future<String> getJson()async{
    var resp = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept" :"application/json"}
    );

    setState(){
      var convertDataToJson = json.decode(resp.body);
      var data = convertDataToJson['results'];
    }

  }
}