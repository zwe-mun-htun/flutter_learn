import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(tabs: [
                new Tab(icon: new Icon(Icons.directions_car),),
                new Tab(icon: new Icon(Icons.directions_bike),),
                new Tab(icon: new Icon(Icons.directions_railway),)
              ],
              ),
              title: new Text('Tabs Demo'),
            ),
            body: new TabBarView(children: [
              new Text('Lora sample', style: new TextStyle(fontFamily: 'Lora', fontSize: 20.0),),
              new Text('Montserrat sample', style: new TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),),
              new Text('Oxygen Sample', style: new TextStyle(fontFamily: 'Oxygen', fontSize: 20.0),),
            ],
            ),
          ),
      ),
    );
  }
}
