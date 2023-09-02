import 'package:f290_dsm_pdm2_soundmaker_ct/pages/xylophone_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: XylophonePage(),
    );
  }
}
