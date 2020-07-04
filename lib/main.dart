import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width = 600;
  bool increase = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Container(
      child:Column(
        children: <Widget>[
            Expanded(
            child:AnimatedContainer(
              width : _width,
              child: Image.asset('assests/star.png'),
              duration: Duration(seconds: 5),
            ),
            ),





      FlatButton(
        onPressed: (){
          setState(() {
            if(increase){
              _width = 100;
              increase = !increase;
              //print(increase);
            }
            else{
              _width = 600;
              increase = !increase;
              //print(increase);
            }
          });
        },
        color : Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Animate',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20,color: Colors.white),
        ),
      )


        ],
      ),


    )
    );
  }


}
/*
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          width : 300,
          child: Image.asset('assests/star.png'),
          duration: Duration(seconds: 1),
        ),
        FlatButton(
          onPressed: (){
            setState(() {
              if(increase){
                _width = 100;
                increase = !increase;
              }
              else{
                _width = 600;
                increase = !increase;
              }
            });
          },
          color: Colors.red,
          child: Text(
            increase?'Decrease':'Increase',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        )


      ],
    );
  }
}

 */