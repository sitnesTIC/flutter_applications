import 'package:flutter/material.dart';
// -> GS
// import 'package:flutter_applications/screens/listview1_screen.dart';
import 'package:flutter_applications/screens/listview2_screen.dart';
// <- GS

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Components App',
        home: Listview2Screen());
  }
}
