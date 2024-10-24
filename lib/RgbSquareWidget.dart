import 'package:flutter/material.dart';

class RgbSquareWidget extends StatefulWidget {
  const RgbSquareWidget({super.key});

  @override
  State<StatefulWidget> createState() => RgbSquareState();
}

class RgbSquareState extends State<RgbSquareWidget> {
  double _red = 0;
  double _green = 0;
  double _blue = 0;

  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Square
        Container(
          width: 250,
          height: 250,
          color: Color.fromRGBO(_red.round(), _green.round(), _blue.round(), 1),
        ),
        const SizedBox(height: 125),

        //Red
        Row(
          children: [
            const Text('Red: '),
            Text(_red.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _red,
          onChanged: _onChangeRed,
          min: 0,
          max: 255,
          divisions: 255,
        ),
        const SizedBox(height: 10),

        //Green
        Row(
          children: [
            const Text('Green: '),
            Text(_green.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _green,
          onChanged: _onChangeGreen,
          min: 0,
          max: 255,
          divisions: 255,
        ),
        const SizedBox(height: 10),

        //Blue
        Row(
          children: [
            const Text('Blue: '),
            Text(_blue.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _blue,
          onChanged: _onChangeBlue,
          min: 0,
          max: 255,
          divisions: 255,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
