import 'package:flutter/material.dart';
import 'package:flutter_applications/themes/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.photo_album_outlined,
                      color: AppTheme.primary,
                    ),
                    title: Text('Sóc un títol'),
                    subtitle: Text(
                        'please dirt cook seat canal yesterday worse mostly shaking ordinary machine where organized shore gather pole hold example parallel grass height pain turn winter'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
