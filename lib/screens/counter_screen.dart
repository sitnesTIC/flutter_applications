import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int comptador = 15;
  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Clicks counter',
              style: fontsize30,
            ),
            Text('$comptador', style: fontsize30),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          comptador++;
          setState(() {});
        },
      ),
    );
  }
}
