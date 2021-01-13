import 'package:flutter/material.dart';

class DestinationScreen extends StatelessWidget {
  DestinationScreen({@required this.bgColor});
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animations'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: bgColor,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Destination',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
