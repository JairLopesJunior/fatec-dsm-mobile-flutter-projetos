import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  bool isXyloPhone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World!!"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isXyloPhone = !isXyloPhone;
              });
            },
            icon: isXyloPhone
            ? const Icon(Icons.list)
            : Icon(Icons.grid_4x4),
          ),
        ],
      ),
      body: isXyloPhone
      ? createFunnySoundsBoard()
      : createXyloPhoneWidget(),
    );
  }

  Widget createFunnySoundsBoard() {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.amberAccent, 8),
                newColorButton(Colors.orange, 9),
                newColorButton(Colors.red, 10),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.white38, 11),
                newColorButton(Colors.pink, 12),
                newColorButton(Colors.tealAccent, 13),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.green, 14),
                newColorButton(Colors.lightBlue, 8),
                newColorButton(Colors.purple, 9),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.black38, 10),
                newColorButton(Colors.lightGreen, 11),
                newColorButton(Colors.pinkAccent, 12),
              ],
            ),
          )
        ],
      ),
    );
  }

  createXyloPhoneWidget() {
    return Center(
      child: Column(
        children: [
          newColorButton(Colors.red, 8),
          newColorButton(Colors.orange, 9),
          newColorButton(Colors.yellow, 10),
          newColorButton(Colors.green, 11),
          newColorButton(Colors.blueAccent, 12),
          newColorButton(Colors.blue, 13),
          newColorButton(Colors.purple, 14)
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
          player.play(AssetSource('notes/note$noteNumber.mp3'));
        },
        child: Ink(
          color: newColor,
        ),
      )),
    );
  }
}
