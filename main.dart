import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BasketballCounterApp());
}

class BasketballCounterApp extends StatefulWidget {
  @override
  _BasketballCounterAppState createState() => _BasketballCounterAppState();
}

class _BasketballCounterAppState extends State<BasketballCounterApp> {
  int _teamAScore = 0;
  int _teamBScore = 0;

  void _incrementTeamAScore(int points) {
    setState(() {
      _teamAScore += points;
    });
  }

  void _incrementTeamBScore(int points) {
    setState(() {
      _teamBScore += points;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          title: Text('Basketball Counter'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '$_teamAScore',
                      style: TextStyle(
                        fontSize: 140.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text('Add 1 point ',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamAScore(1),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('Add 2 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamAScore(2),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('Add 3 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamAScore(3),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '$_teamBScore',
                      style: TextStyle(
                        fontSize: 140.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text('Add 1 point ',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamBScore(1),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('Add 2 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamBScore(2),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('Add 3 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamBScore(3),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              child: Text('Reset',
                  style: TextStyle(
                    fontSize: 30,
                  )),
              onPressed: () {
                setState(() {
                  _teamAScore = 0;
                  _teamBScore = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
