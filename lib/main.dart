import 'package:flutter/material.dart';
//import 'widget_overview.dart';
import 'handle_gestures.dart';

void main()=>runApp(new MaterialApp(
  theme: new ThemeData(
    primaryColor: Colors.green,
  ),
  debugShowCheckedModeBanner: false,
  //home: new HomePage(),
  home: new MyButton(),
));

