import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Contador de Pessoas', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoas = 0;
  String _info_pessoas;

  void _outInfoPeople(){
    String r="";
    if (_pessoas > 10){
      r = "Lotado!!!";
    }else{
      r= "Pode Entrar!";
    }

    setState(() {
      _info_pessoas=r;
    });
  }

  void _changePeople(int i){
    setState(() {
      _pessoas+=i;
    });
  }


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
            Text("Pessoas $_pessoas",
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
                          _changePeople(1);
                          _outInfoPeople();
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
                          _changePeople(-1);
                          _outInfoPeople();
                        }))
              ],
            ),
            Text("$_info_pessoas",
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

