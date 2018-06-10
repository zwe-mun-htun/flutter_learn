import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CHomePage extends StatefulWidget{
  final List currencies;

  CHomePage(this.currencies);
  @override
  _CHomePageState createState() => new _CHomePageState();

}

class _CHomePageState extends State<CHomePage>{

  List currencies;
  final List<MaterialColor> _colors = [Colors.blue, Colors.red, Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Crypto App"),
        //elevation: defaultTargetPlatform == TargetPlatform.iOS ? 1.0 : 5.0,
      ),
      body: _cryptoWidget(),

    );
  }

  Widget _cryptoWidget(){
    return new Container(
      child: new Column(
        children: <Widget>[new Flexible(
          child: new ListView.builder(
            itemCount: widget.currencies.length,
            itemBuilder: (BuildContext context, int index){
              final Map currency = widget.currencies[index];
              final MaterialColor color = _colors[index % _colors.length];

              return _getListItemUI(currency, color);
            },
          ),
        ),
        ],

      ),
    );
  }

  ListTile _getListItemUI(Map currency, MaterialColor color){
    return new ListTile(
      leading: new CircleAvatar(backgroundColor: color,
      child: new Text(currency['name'][0], style: new TextStyle(color: Colors.white),),
      ),
      title: new Text(
        currency['name'], style: new TextStyle(fontFamily: 'Oxygen'),
      ),
      subtitle: _getSubTitleText(currency['price_usd'], currency['percent_change_1h']),
      isThreeLine: true
    );
  }

  Widget _getSubTitleText(String priceUSD, String percentageChange){
    TextSpan priceTextWidget = new TextSpan(text: "\$$priceUSD\n",
    style: new TextStyle(color: Colors.black));
    String percentageChangeText = "1 hour: $percentageChange%";
    TextSpan percentageWidget;

    if(double.parse(percentageChange)>0){
      percentageWidget = new TextSpan(text: percentageChangeText,
      style: new TextStyle(color: Colors.green));
    }else{
      percentageWidget = new TextSpan(text: percentageChangeText,
          style: new TextStyle(color: Colors.red));
    }
    return new RichText(
        text: new TextSpan(
          children: [priceTextWidget, percentageWidget]
        )
    );

  }
}

