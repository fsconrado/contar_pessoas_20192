import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: "Contador de Pessoas", home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contarPessoas = 0;
  String _infoTexto = "Pode Entrar!!!";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Contar Pessoas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Pessoas: $_contarPessoas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              _infoTexto,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      _contarPessoas++;
                    });
                  },
                ),
                FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      _contarPessoas--;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
