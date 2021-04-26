import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'dart:math';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      routes: {
        '/home': (context) => HomeScreen(),
        '/slideshow': (context) => SlideshowScreen()
      },

      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: Colors.red,),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(child: Text('push'), color: Colors.green, onPressed: () {

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
              // );


              //  Navigator.pushNamed(
              //     context,
              //     '/slideshow'
              //   );

              Navigator.pushNamed(
                  context,
                  '/slideshow'
              );

            },),

          ],
        ),
      ),
    );
  }
}

class SlideshowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Animation'), backgroundColor: Colors.red,),
          body: Center(
            child: CoolBox(),
          )
      ),
    );
  }

}

class CoolBox extends StatefulWidget {
  const CoolBox({
    Key key,
  }) : super(key: key);

  @override
  _CoolBoxState createState() => _CoolBoxState();
}

class _CoolBoxState extends State<CoolBox> {

  double width = 100;
  double height = 100;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(seconds: 2),
        curve: Curves.bounceInOut,
        color: color,
        width: width,
        height: height,
        child: FlatButton(
          child: Text('Random'),
          onPressed: () {

            setState(() {
              width = Random().nextDouble() * 400;
              height = Random().nextDouble() * 400;

              int r = Random().nextInt(255);
              int b = Random().nextInt(255);
              int g = Random().nextInt(255);
              color = Color.fromRGBO(r, b, g, 1);
            });


          },
        )
    );
  }

}
