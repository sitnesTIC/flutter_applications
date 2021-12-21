import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/5/5c/Vista_d%27Encamp_-_Andorra.jpg')),
        ],
      ),
    );
  }
}
