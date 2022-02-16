import 'package:cocktail/home_page.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
const Color mycolor = Colors.brown;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Get Data From API as well as from Local.",
        theme: ThemeData(
          primarySwatch: Colors.brown,
          //   fontFamily: "Pacifico",
          //  accentColor: Colors.cyan,
        ),
        home: HomePage());
  }
}
