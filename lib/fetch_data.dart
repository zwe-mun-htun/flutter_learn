import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FDHomePage extends StatefulWidget{

  @override
  FDHomePageState createState() => new FDHomePageState();
}

class FDHomePageState extends State<FDHomePage>{
  final String url = "http://api.sharmal.com/diymm/public/api/get_all_posts";
  List data;


  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{

    var response = await http.post(
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"},
      body: {"token": "jBgCNm8L9JlFrgbskENgVaxt5cP7MPlAUjb71UkY"}
      );

    print(response.body);

    setState(() {
      var convertDataToJson = JSON.decode(response.body);
      data = convertDataToJson['posts'];
    });

    return "Success";
  }


  @override
  Widget build(BuildContext context) {
    final String img_url = 'http://api.sharmal.com/diymm/public/upload/';
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton( icon: new Icon(
            Icons.menu,
            color: Colors.white),
            onPressed: null),

        title: new Text('DM'),

        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                  Icons.search,
                  color: Colors.white),
              onPressed: null),
        ],
      ),
      body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index){
        return new Card(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Text(data[index]['post_title'], style: new TextStyle(fontSize: 15.0),),
              new Image.network(img_url + data[index]['photo']),
              new Text(data[index]['post_desc'], maxLines: 2,),
            ],

          ),
          elevation: 1.0,
        );
      },
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: null,
        backgroundColor: Colors.green,
      ),
    );
  }
}