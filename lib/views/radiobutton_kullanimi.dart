import 'package:flutter/material.dart';

class RadioButtonKullanimi extends StatefulWidget {
  const RadioButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<RadioButtonKullanimi> createState() => _RadioButtonKullanimiState();
}

class _RadioButtonKullanimiState extends State<RadioButtonKullanimi> {
  int radioDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button Kullanimi"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            title: Row(
              children: const [
                Text("Erkek"),
                Icon(Icons.male),
              ],
            ),
            value: 1,
            groupValue: radioDeger,
            onChanged: (int? veri) {
              setState(() {
                radioDeger = veri!;
              });
            },
            tileColor: Colors.lightGreenAccent[100],
          ),
          RadioListTile(
            title: Row(
              children: const [
                Text("Kadin"),
                Icon(Icons.female),
              ],
            ),
            value: 2,
            groupValue: radioDeger,
            onChanged: (int? veri) {
              setState(() {
                radioDeger = veri!;
              });
            },
            activeColor: Colors.white,
            tileColor: Colors.blueGrey[200],
          ),
        ],
      ),
    );
  }
}
