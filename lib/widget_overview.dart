import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(

        leading: new IconButton( icon: new Icon(
            Icons.menu,
            color: Colors.white),
            onPressed: null),

        title: new Text('Example Title'),

        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                  Icons.search,
                  color: Colors.white),
              onPressed: null),
        ],
      ),

      body: new Center(
        child: new FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image:
          'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
        ),
      ),

      floatingActionButton: new FloatingActionButton(
          child: new Icon(
              Icons.add),
          onPressed: null),

    );
  }
}

