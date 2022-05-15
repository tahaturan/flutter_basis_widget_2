import 'package:flutter/material.dart';

class CheckboxAl extends StatefulWidget {
  String name;
  bool kontrol;
  CheckboxAl({Key? key, required this.name, required this.kontrol})
      : super(key: key);

  @override
  State<CheckboxAl> createState() => _CheckboxAlState();
}

class _CheckboxAlState extends State<CheckboxAl> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.kontrol,
      title: Text(widget.name),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool? veri) {
        setState(() {
          widget.kontrol = veri!;
        });
      },
      checkColor: Colors.red, //*secildigi zaman tikin rengini belirler
      activeColor: Colors.amber,
      tileColor: Colors.blueGrey,
      side: const BorderSide(color: Colors.amber),
    );
  }
}
