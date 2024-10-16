import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color _backgroundColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _backgroundColor =
          _backgroundColor == Colors.blue ? Colors.yellow : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          child: Text('Change Color'),
        ),
      ),
    );
  }
}
