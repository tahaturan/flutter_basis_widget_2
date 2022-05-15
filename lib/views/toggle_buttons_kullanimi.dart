import 'package:flutter/material.dart';

class ToggleButtonsKullanimi extends StatefulWidget {
  const ToggleButtonsKullanimi({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsKullanimi> createState() => _ToggleButtonsKullanimiState();
}

class _ToggleButtonsKullanimiState extends State<ToggleButtonsKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Buttons Kullanimi"),
      ),
      body: Container(),
    );
  }
}
