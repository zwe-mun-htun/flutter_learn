import 'package:flutter/material.dart';
import 'dart:convert';

class LoadJsonPage extends StatefulWidget{

  @override
  LoadJsonPageState createState() => new LoadJsonPageState();
}

class LoadJsonPageState extends State<LoadJsonPage>{
  List data;
  final String url = 'http://api.sharmal.com/diymm/public/upload/';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('LoadJson'),
      ),
      
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle
            .of(context)
            .loadString('assets/json/test.json'),
            builder: (context, snapshot){
              var mydata = JSON.decode(snapshot.data.toString());

              return new ListView.builder(
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text(mydata[index]['post_title']),
                          new Image.network(url + mydata[index]['photo']),
                          new Text(mydata[index]['post_desc']),
                        ],
                      ),
                    );
                  },

                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }


}
