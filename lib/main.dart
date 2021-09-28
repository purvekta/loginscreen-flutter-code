import 'package:flutter/material.dart';
import 'bottomnavigationbar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pukemy',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

    home: NavToNewPageBottomNav(),
    );
  }
}
