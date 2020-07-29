import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design/src/screens/basic_screen.dart';
import 'package:design/src/screens/scroll_screen.dart';
import 'package:design/src/screens/dashboard_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    )); 

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'scroll',
      routes: {
        'basic' : (BuildContext context) => BasicScreen(),
        'scroll' : (BuildContext context) => ScrollScreen(),
        'dashboard' : (BuildContext context) => DashboardScreen(),
      },
    );
  }
}