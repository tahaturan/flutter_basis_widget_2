import 'package:flutter/material.dart';
import 'package:flutter_basis_widget_2/views/toggle_buttons_kullanimi.dart';
import 'package:flutter_basis_widget_2/widgets/sayfa_gecis_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SayfaGecisButton(
                butonYazi: "Toggle Button",
                gecisSayfasi: const ToggleButtonsKullanimi()),
          ],
        ),
      ),
    );
  }
}
