import 'package:flutter/material.dart';

class ProgressBarKullanimi extends StatefulWidget {
  const ProgressBarKullanimi({Key? key}) : super(key: key);

  @override
  State<ProgressBarKullanimi> createState() => _ProgressBarKullanimiState();
}

class _ProgressBarKullanimiState extends State<ProgressBarKullanimi> {
  bool progressBarKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ProgressBar Kullanimi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: progressBarKontrol,
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  backgroundColor: Colors.white,
                  strokeWidth: 5,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    progressBarKontrol = true;
                  });
                },
                child: const Text(
                  "Basla",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    progressBarKontrol = false;
                  });
                },
                child: const Text(
                  "Dur",
                ),
              ),
            ],
          ),
        ));
  }
}
