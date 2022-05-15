import 'package:flutter/material.dart';

class ToggleButtonsKullanimi extends StatefulWidget {
  const ToggleButtonsKullanimi({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsKullanimi> createState() => _ToggleButtonsKullanimiState();
}

class _ToggleButtonsKullanimiState extends State<ToggleButtonsKullanimi> {
  var toggleDurumlar = [false, true, false];
  int secilenToggleIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Buttons Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(
              color: Colors.grey, //* secilmemis haldeki rengini belirler
              selectedColor: Colors.amber, //*secilidi zaman aldigi renk
              fillColor: Colors.cyan, //* secildigi zaman olan arka plan rengi
              borderColor: Colors.red, //* secilmemis haldeki cercevere rengi
              selectedBorderColor:
                  Colors.green, //*secilmis haldeki cerceve rengi
              borderWidth: 3, //* cerceve kalinligi
              isSelected: toggleDurumlar,
              children: const [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3),
              ],
              onPressed: (int secilenIndex) {
                secilenToggleIndex = secilenIndex;
                debugPrint("${secilenIndex + 1}.Toggle Secildi");
                setState(() {
                  toggleDurumlar[secilenIndex] = !toggleDurumlar[secilenIndex];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
