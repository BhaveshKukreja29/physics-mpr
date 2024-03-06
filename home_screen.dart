import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'This is the home screen!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
