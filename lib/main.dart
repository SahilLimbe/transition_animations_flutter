import 'package:animations_flutter/destination_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        leading: Icon(
          Icons.check_box_rounded,
          color: Color(0x00000000),
        ),
        title: Text('Flutter Animations'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavigationButton(
                      title: 'Fade',
                      color: Colors.green,
                      animation: PageTransitionType.fade,
                    ),
                    NavigationButton(
                      title: 'Left to Right',
                      color: Colors.greenAccent,
                      animation: PageTransitionType.leftToRight,
                    ),
                    NavigationButton(
                      title: 'Right to Left',
                      color: Colors.purpleAccent,
                      animation: PageTransitionType.rightToLeft,
                    ),
                    NavigationButton(
                      title: 'Top to Bottom',
                      color: Colors.pinkAccent,
                      animation: PageTransitionType.topToBottom,
                    ),
                    NavigationButton(
                      title: 'Bottom to Top',
                      color: Colors.amberAccent[100],
                      animation: PageTransitionType.bottomToTop,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavigationButton(
                      title: 'Scale',
                      color: Colors.teal,
                      animation: PageTransitionType.scale,
                    ),
                    NavigationButton(
                      title: 'Size',
                      color: Colors.blueGrey,
                      animation: PageTransitionType.size,
                    ),
                    NavigationButton(
                      title: 'Rotate',
                      color: Colors.amberAccent[700],
                      animation: PageTransitionType.rotate,
                    ),
                    NavigationButton(
                      title: 'Right to Left with Fade',
                      color: Colors.purple[200],
                      animation: PageTransitionType.rightToLeftWithFade,
                    ),
                    NavigationButton(
                      title: 'Left to Right with Fade',
                      color: Colors.brown,
                      animation: PageTransitionType.leftToRightWithFade,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    @required this.title,
    @required this.color,
    @required this.animation,
  });
  final String title;
  final Color color;
  final PageTransitionType animation;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 4.0,
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          PageTransition(
            type: animation,
            alignment: Alignment.centerRight,
            child: DestinationScreen(
              bgColor: color,
            ),
          ),
        );
      },
      child: Text(
        title,
      ),
    );
  }
}
