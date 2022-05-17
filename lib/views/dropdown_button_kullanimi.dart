import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  var ulkelerListe = <String>[];
  String secilenUlke = "Turkiye";
  @override
  void initState() {
    super.initState();
    ulkelerListe.add("Turkiye");
    ulkelerListe.add("Almanya");
    ulkelerListe.add("Fransa");
    ulkelerListe.add("Italya");
    ulkelerListe.add("Japonya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DropDown Button Kullanimi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: secilenUlke,
                items:
                    ulkelerListe.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      "Ulke: $value",
                      style: const TextStyle(color: Colors.blue),
                    ),
                  );
                }).toList(),
                icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                onChanged: (String? secilenVeri) {
                  setState(() {
                    secilenUlke = secilenVeri!;
                  });
                },
              )
            ],
          ),
        ));
  }
}
