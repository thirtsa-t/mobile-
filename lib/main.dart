import 'package:awesomitylab/Screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:awesomitylab/Screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: const Color(0xff1C2834),
      ),
      home: MyHomePage(title: '',),
    );
  }
}
