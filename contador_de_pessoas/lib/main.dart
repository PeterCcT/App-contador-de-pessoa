import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Contador de pessoas",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                child: Text(
                  "+1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: () {},
              ),
              ),
              
             Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                child: Text(
                  "-1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: () {},
              ),
              ),
            ],
          ),
          Text("Entrada liberada",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25))
        ],
      ),
    ),
  );
}
