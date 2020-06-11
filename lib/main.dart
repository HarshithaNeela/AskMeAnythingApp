import 'dart:math';

import 'package:flutter/material.dart';
void main()
{
  runApp(
    A()
  );
}
class A extends StatefulWidget {
  @override
  _AState createState() => _AState();
}

class _AState extends State<A> {
  @override
  int numball=1;
  Widget build(BuildContext context) {
    return MaterialApp(
        title:"decisionmaker",
        home:
        Scaffold(
          appBar:AppBar(
            title: Text("DecisionMaker"),
            backgroundColor: Colors.indigoAccent,
          ),
          backgroundColor: Colors.amberAccent,
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:FlatButton(
                      child:
                      Image.asset("images/ball$numball.png"),
                    onPressed: (){
                        setState(() {
                          numball=Random().nextInt(5)+1;
                        });
                    },
                  )
                  ,),
              ],
            ),
          ),
        )
    );
  }
}
