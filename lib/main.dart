import 'package:flutter/material.dart';
import 'package:flutterapp/screens/second.dart';
import 'package:flutterapp/state/cart.dart';
import 'package:flutterapp/state/counter.dart';
import 'package:provider/provider.dart';

import 'Screens/Home.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Cart()),
      ChangeNotifierProvider(create: (_) => Count()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Second(),
      },
    );
  }
}
