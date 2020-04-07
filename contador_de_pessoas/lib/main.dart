import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Contador de pessoas",
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _quantPessoa = 0;
  String _verificacao = "Entrada liberada";
  void quantPessoa(int delta) {
    setState(() {
      _quantPessoa += delta;
      if (_quantPessoa < 0) {
        _quantPessoa = 0;
        _verificacao = "Não ha pessoas...";
      } else if (_quantPessoa <= 10) {
        _verificacao = "Entrada liberada";
      } else {
        _quantPessoa = 10;
        _verificacao = "Entrada negada,Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_quantPessoa",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                    onPressed: () {
                      quantPessoa(1);
                    },
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
                    onPressed: () {
                      quantPessoa(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _verificacao,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            )
          ],
        ),
      ],
    );
  }
}
