import 'package:flutter/material.dart';
import 'widget_overview.dart';
import 'handle_gestures.dart';
import 'using_theme.dart';
import 'load_json.dart';

//void main()=>runApp(new MyApp());


void main()=>runApp(new MaterialApp(
  theme: new ThemeData(
    primaryColor: Colors.pink,
  ),

  home: new LoadJsonPage(),
));
