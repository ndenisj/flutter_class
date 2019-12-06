import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/location_page.dart';
import './pages/loading_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/home': (context) => HomePage(),
        '/location': (context) => LocationPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'World Time',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
