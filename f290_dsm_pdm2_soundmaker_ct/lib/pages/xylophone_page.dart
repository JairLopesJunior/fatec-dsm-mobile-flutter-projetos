import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World!!"),
      ),
      body: createXyloPhoneWidget(),
    );
  }

  createXyloPhoneWidget() {
    return Center(
        child: Column(
          children: [
            newColorButton(Colors.red, 1),
            newColorButton(Colors.orange, 2),
            newColorButton(Colors.yellow, 3),
            newColorButton(Colors.green, 4),
            newColorButton(Colors.blueAccent, 5),
            newColorButton(Colors.blue, 6),
            newColorButton(Colors.purple, 7)
          ],
        ),
      );
  }

  Expanded newColorButton(Color newColor, int noteNumber) {
    return Expanded(
      child: Material(
          child: InkWell(
        splashColor: Colors.black38,
        onTap: () {
          var player = AudioPlayer();
          player.play(AssetSource('notes/note$noteNumber.wav'));
        },
        child: Ink(
          color: newColor,
        ),
      )),
    );
  }
}
