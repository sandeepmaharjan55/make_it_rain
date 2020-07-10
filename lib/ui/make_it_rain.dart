import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  MakeItRainState createState() => MakeItRainState();
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!!"),
        backgroundColor: Colors.greenAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich!!!",
                style: new TextStyle(
                    fontSize: 25.9,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text(
                  "\$$_moneyCounter",
                  style: new TextStyle(
                      fontSize: 40.9,
                      color: _moneyCounter < 1000 ? Colors.green : Colors.red,
                      fontWeight: _moneyCounter < 1000
                          ? FontWeight.w300
                          : FontWeight.w700),
                ),
              ),
            ),
            new Expanded(
              child: new Center(
                  child: new FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                onPressed: _rainMoney,
                child: new Text(
                  "Let It Rain!!!",
                  style: new TextStyle(
                      fontSize: 25.9,
                      // color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
