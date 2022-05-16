import 'package:flutter/material.dart';

class SliderKullanimi extends StatefulWidget {
  const SliderKullanimi({Key? key}) : super(key: key);

  @override
  State<SliderKullanimi> createState() => _SliderKullanimiState();
}

class _SliderKullanimiState extends State<SliderKullanimi> {
  double ilerleme = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sonuc: ${ilerleme.toInt()}"),
            Slider(
              max: 100.0,
              min: 0.0,
              value: ilerleme,
              onChanged: (double newValue) {
                setState(() {
                  ilerleme = newValue;
                });
              },
              divisions: 100, //*4 e bolup ona gore ilerlememizi sagladi
              label: ilerleme
                  .toInt()
                  .toString(), //* Nerde oldgu ile ilgili bilgi verir
              activeColor: Colors.blue,
              inactiveColor: Colors.green,
              thumbColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
