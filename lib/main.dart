import 'package:flutter/material.dart';
// -> GS
import 'package:flutter_applications/src/screens/home_temp.dart';
// <- GS

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Components App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Components'),
        ),
        body: const HomeTempScreen(),
      ),
    );
  }
}
