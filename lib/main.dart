import 'package:flutter/material.dart';
import 'widget_overview.dart';
import 'handle_gestures.dart';
import 'using_theme.dart';
import 'load_json.dart';
import 'fetch_data.dart';
import 'pratice_ui.dart';
import 'crypto_app.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';

//void main()=>runApp(new CyptoHomePage());

void main() async {
  List currencies = await getCurrencies();
  print(currencies);
  runApp(new MyApp(currencies));
}

class MyApp extends StatelessWidget{
  List _currencies;
  MyApp(this._currencies);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
        //primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey : null,
      ),
      debugShowCheckedModeBanner: false,
      home: new CHomePage(_currencies),
    );
  }
}


Future<List> getCurrencies() async {
  String base_url = "https://api.coinmarketcap.com/v1/ticker/?limit=50";
  http.Response response = await http.get(base_url);
  return JSON.decode(response.body);
}
