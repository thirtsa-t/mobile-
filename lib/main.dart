import 'package:awesomitylab/Screen/homescreen.dart';

import 'package:flutter/material.dart';
import 'package:awesomitylab/Screen/homescreen.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'model/todo.dart';



const String TODO_BOX = 'todo_box';
Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  //local directory
  final document = await getApplicationSupportDirectory();
  //path
  Hive.init(document.path);
  //auto generated file
  Hive.registerAdapter(TodoAdapter());
  //open hive box
  await Hive.openBox<Todo>(TODO_BOX);
  
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
