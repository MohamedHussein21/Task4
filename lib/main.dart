import 'package:flutter/material.dart';
import 'modules/Product_item.dart';
import 'modules/login_screen.dart';
import 'modules/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task4',
      routes: <String, WidgetBuilder>{
         '/body' : (BuildContext context)=> ProductScreen(),
         '/productItem' : (BuildContext context)=> ProductItem(),

      },
      home: LoginScreen(),
    );
  }
}
