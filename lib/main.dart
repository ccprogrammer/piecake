import 'package:flutter/material.dart';
import 'package:pie_cake/pages/main_page.dart';
import 'package:pie_cake/pages/order_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainPage(),
        '/order': (context) => OrderPage(),
      },
    );
  }
}
