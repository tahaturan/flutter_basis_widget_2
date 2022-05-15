import 'package:flutter/material.dart';

class SayfaGecisButton extends StatefulWidget {
  String butonYazi;
  Widget gecisSayfasi;
  SayfaGecisButton(
      {Key? key, required this.butonYazi, required this.gecisSayfasi})
      : super(key: key);

  @override
  State<SayfaGecisButton> createState() => _SayfaGecisButtonState();
}

class _SayfaGecisButtonState extends State<SayfaGecisButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget.gecisSayfasi,
            ));
      },
      child: Text(
        widget.butonYazi,
      ),
    );
  }
}
