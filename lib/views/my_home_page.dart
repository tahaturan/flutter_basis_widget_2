import 'package:flutter/material.dart';
import 'package:flutter_basis_widget_2/views/checkbox_kullanimi.dart';
import 'package:flutter_basis_widget_2/views/dropdown_button_kullanimi.dart';
import 'package:flutter_basis_widget_2/views/progressbar_kullanimi.dart';
import 'package:flutter_basis_widget_2/views/radiobutton_kullanimi.dart';
import 'package:flutter_basis_widget_2/views/slider_kullanimi.dart';
import 'package:flutter_basis_widget_2/views/time_and_date_picker.dart';
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
            SayfaGecisButton(
                butonYazi: "CheckBox Kullanimi",
                gecisSayfasi: const CheckBoxKullanimi()),
            SayfaGecisButton(
                butonYazi: "Radio Button Kullanimi",
                gecisSayfasi: const RadioButtonKullanimi()),
            SayfaGecisButton(
                butonYazi: "ProgressBar Kullanimi",
                gecisSayfasi: const ProgressBarKullanimi()),
            SayfaGecisButton(
                butonYazi: "Slider Kullanimi",
                gecisSayfasi: const SliderKullanimi()),
            SayfaGecisButton(
                butonYazi: "Time And Date Picker",
                gecisSayfasi: const TimeAndDatePicker()),
            SayfaGecisButton(
                butonYazi: "DropDown Button",
                gecisSayfasi: const DropDownButtonKullanimi()),
          ],
        ),
      ),
    );
  }
}
