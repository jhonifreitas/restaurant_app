import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {

  int _peoples = 0;
  String _message = 'Restaurante vazio!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/restaurant-chocolat.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Pessoas: $_peoples',
                  style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold, fontSize: 50)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                        FlatButton(
                          child: Text('+1',
                          style: TextStyle(color: Colors.white,
                            fontSize: 25)),
                            onPressed: () {
                              if(this._peoples < 10){
                                this._changePeople(1);
                              }
                            },
                          )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                        FlatButton(
                          child: Text('-1',
                          style: TextStyle(color: Colors.white,
                            fontSize: 25)),
                            onPressed: () {
                              if(this._peoples > 0){
                                this._changePeople(-1);
                              }
                            },
                          )
                    ),
                  ],
                ),
                Text(this._message,
                  style: TextStyle(color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)
                )
              ],
            ),
          )
        )
      ),
    );
  }

  _changePeople(int value){
    setState(() {
      this._peoples += value;

      if(this._peoples == 10){
        this._message = 'Restaurante lotado!';
      }else if(this._peoples == 0){
        this._message = 'Restaurante vazio!';
      }else{
        this._message = 'Pode entrar!';
      }
    });
  }
}
