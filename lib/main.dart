import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Contador de Pessoas', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/original.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas 0",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        onPressed: () {
                          debugPrint('+1');
                        })),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                        child: Text(
                          "-1",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        onPressed: () {
                          debugPrint('-1');
                        }))
              ],
            ),
            Text("Pode Entrar!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30))
          ],
        )
      ],
    );
  }
}
