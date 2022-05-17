import 'package:flutter/material.dart';

class TimeAndDatePicker extends StatefulWidget {
  const TimeAndDatePicker({Key? key}) : super(key: key);

  @override
  State<TimeAndDatePicker> createState() => _TimeAndDatePickerState();
}

class _TimeAndDatePickerState extends State<TimeAndDatePicker> {
  var tfDate = TextEditingController();
  var tfHour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Time And Date Picker"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: tfHour,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  hintText: "Saat Giriniz",
                  prefixIcon: Icon(Icons.timer),
                  prefixText: "Saat:",
                  suffixIcon: Icon(Icons.timer_outlined),
                ),
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  ).then((secilenSaat) {
                    setState(() {
                      tfHour.text =
                          "${secilenSaat!.hour}:${secilenSaat.minute}";
                    });
                  });
                },
              ),
              TextField(
                controller: tfDate,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  hintText: "Tarih Giriniz",
                  prefixIcon: Icon(Icons.date_range_outlined),
                  prefixText: "Tarih: ",
                  suffixIcon: Icon(Icons.date_range_rounded),
                ),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1990),
                    lastDate: DateTime(2050),
                  ).then((secilenTarih) {
                    setState(() {
                      tfDate.text =
                          "${secilenTarih!.day}/${secilenTarih.month}/${secilenTarih.year}";
                    });
                  });
                },
              )
            ],
          ),
        ));
  }
}
