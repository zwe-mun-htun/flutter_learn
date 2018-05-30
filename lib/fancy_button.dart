import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget{

  FancyButton({ @required this.onPressed });

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.lightGreen,
      child: new Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            SizedBox(width: 8.0),
             Text("ADD", style: TextStyle(color: Colors.white)),
          ],
        )
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }


}