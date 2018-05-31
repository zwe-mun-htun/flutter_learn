import 'package:flutter/material.dart';
import 'widget_overview.dart';
import 'handle_gestures.dart';
import 'using_theme.dart';
import 'load_json.dart';
import 'fetch_data.dart';

//void main()=>runApp(new MyApp());


void main()=>runApp(new MaterialApp(
  theme: new ThemeData(
    primaryColor: Colors.green,
  ),
  debugShowCheckedModeBanner: false,
  home: new FDHomePage(),
));
