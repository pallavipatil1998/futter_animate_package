import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Animate Example'),
        ),
        body: Center(
          child: MyAnimatedWidget(),
        ),
      ),
    );
  }
}

class MyAnimatedWidget extends StatefulWidget {
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return  Animate(
      child: Container( width:200,height:200,color:Colors.pink,child: Center(child: Text("Hello",style: TextStyle(fontSize: 30),),)),
      effects: [
        // BlurEffect(duration: Duration(seconds: 5)),
        // AlignEffect(delay: Duration(seconds: 1),begin: Alignment(50, 50))
        BoxShadowEffect(begin: BoxShadow(color: Colors.black45,offset: Offset(30, 30),blurRadius: BlurEffect.neutralBlur,spreadRadius: BorderSide.strokeAlignOutside,),
            duration: Duration(seconds: 2),delay: Duration(seconds: 1),borderRadius: BorderRadius.circular(1),
            end: BoxShadow(color: Colors.green,spreadRadius:10,offset: Offset(-30, -30),blurRadius: BlurEffect.minBlur,blurStyle: BlurStyle.inner),
            curve:Curves.bounceOut),

        // ColorEffect(begin: Colors.purple,end: Colors.green,duration: Duration(seconds: 2),)
       ShimmerEffect( duration: Duration(seconds: 2),),
        FadeEffect(duration: Duration(seconds:1))

        

      ],
    );
      /*GestureDetector(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      child: 
      AnimatedContainer(
        duration: 500.ms, // Flutter Animate makes this simple
        width: _isClicked ? 200 : 100,
        height: _isClicked ? 200 : 100,
        color: _isClicked ? Colors.blue : Colors.red,
        alignment: Alignment.center,
        child: Text(
          'Click Me',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ).animate()
          .fadeIn(duration: 8.seconds)
          .slide(
        begin: Offset(-1, 0),
        end: Offset(0, 0),
        duration: 1.seconds,
      ),
    );*/
  }
}
