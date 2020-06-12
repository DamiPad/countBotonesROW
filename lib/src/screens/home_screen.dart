import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
     _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
     _counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(widget.title),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Text(
              'Numero de clicks:', style: TextStyle(fontSize: 25.0,)
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Expanded(
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      RaisedButton( 
                        onPressed: _resetCounter,
                        //tooltip: 'Reset',
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(13.0),
                        child: Icon(Icons.restore, color: Colors.white,),
                      ), 
                      RaisedButton( 
                        onPressed: _incrementCounter,
                        //tooltip: 'Increment',
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(13.0),
                        child: Icon(Icons.add, color: Colors.white,),
                      ), 
                      RaisedButton( 
                        onPressed: _decrementCounter,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(13.0),
                        //tooltip: 'Decrement',
                        child: Icon(Icons.exposure_neg_1,  color: Colors.white,),
                      ), 
                    ]
                  ),
            )
            
          ],
          
        ),
        
        
      ),
     

      //floatingActionButton: _botones()
      
    );  
  }

  Widget _botones(){
     
      return Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      RaisedButton( 
                        onPressed: _resetCounter,
                        //tooltip: 'Reset',
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(13.0),
                        child: Icon(Icons.restore, color: Colors.white,),
                      ), 
                      RaisedButton( 
                        onPressed: _incrementCounter,
                        //tooltip: 'Increment',
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(13.0),
                        child: Icon(Icons.add, color: Colors.white,),
                      ), 
                      RaisedButton( 
                        onPressed: _decrementCounter,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(13.0),
                        //tooltip: 'Decrement',
                        child: Icon(Icons.exposure_neg_1,  color: Colors.white,),
                      ), 
                    ]
                  ),
              
            );

    }
}
