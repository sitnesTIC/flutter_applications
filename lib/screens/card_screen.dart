import 'package:flutter/material.dart';

import 'package:flutter_applications/widgets/widgets.dart';

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
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/5/5c/Vista_d%27Encamp_-_Andorra.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              name: 'Comú d\'Encamp',
              imageUrl:
                  'https://static.wixstatic.com/media/359f89_74876aadd9c449498de871c78b8e3a8c~mv2_d_1536_2048_s_2.jpg/v1/fill/w_1000,h_1333,al_c,q_90,usm_0.66_1.00_0.01/359f89_74876aadd9c449498de871c78b8e3a8c~mv2_d_1536_2048_s_2.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              name: 'Encamp, al cor d\'Andorra',
              imageUrl:
                  'http://encamp.andorra-infos.com/wp-content/grand-media/image/encamp.jpg',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
