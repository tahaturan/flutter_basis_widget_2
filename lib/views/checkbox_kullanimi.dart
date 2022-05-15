import 'package:flutter/material.dart';
import 'package:flutter_basis_widget_2/widgets/checkbox.dart';

class CheckBoxKullanimi extends StatefulWidget {
  const CheckBoxKullanimi({Key? key}) : super(key: key);

  @override
  State<CheckBoxKullanimi> createState() => _CheckBoxKullanimiState();
}

class _CheckBoxKullanimiState extends State<CheckBoxKullanimi> {
  bool kotlinDurum = false;
  bool dartDurum = false;
  bool pythonDurum = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxAl(name: "Kotlin", kontrol: kotlinDurum),
            CheckboxAl(name: "Dart", kontrol: dartDurum),
            CheckboxAl(name: "Python", kontrol: pythonDurum),
          ],
        ),
      ),
    );
  }
}
