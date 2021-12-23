import 'package:flutter/material.dart';
import 'package:componentes_de_flutter/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),

            // Checkbox
            Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value ?? true;
              }),
            ),

            // Switch
            Switch.adaptive(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value;
                setState(() {});
              },
            ),
            SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),

            // Image
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSciFU0376jfg2rg7m87kPqHk5F7qyuD_wbwA&usqp=CAU'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),

            // AboutListTile
            const AboutListTile(
              icon: Icon(Icons.copyright_rounded),
            ),
          ],
        ));
  }
}
