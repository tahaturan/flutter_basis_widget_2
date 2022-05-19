import 'package:flutter/material.dart';

class AlertDialogKullanimi extends StatefulWidget {
  const AlertDialogKullanimi({Key? key}) : super(key: key);

  @override
  State<AlertDialogKullanimi> createState() => _AlertDialogKullanimiState();
}

class _AlertDialogKullanimiState extends State<AlertDialogKullanimi> {
  var tfKontrol = TextEditingController();
  String alinanVeri = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext? context) {
                    return AlertDialog(
                      title: const Text("Baslik kismi"),
                      content: const Text("Icerik Bolumu:"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context!);
                          },
                          child: const Text(
                            "Iptal",
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context!);
                          },
                          child: const Text(
                            "Tamam",
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "Varsayilan Alert",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext? context) {
                      return AlertDialog(
                        title: const Text("Ozellestirilmis Alert"),
                        content: SizedBox(
                          height: 100,
                          child: TextField(
                            controller: tfKontrol,
                            decoration: const InputDecoration(
                              labelText: "Veri",
                              prefixIcon: Icon(Icons.content_copy_sharp),
                              suffixText: "Veri Giriniz",
                              suffixStyle: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        backgroundColor: Colors.cyan[200],
                        titleTextStyle: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              tfKontrol.text = "";
                              Navigator.pop(context!);
                            },
                            child: const Text(
                              "Iptal",
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                alinanVeri = tfKontrol.text;
                              });
                              tfKontrol.text = "";
                              Navigator.pop(context!);
                            },
                            child: const Text(
                              "Veri Oku",
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: const Text(
                "Ozellestirilmis Alert",
              ),
            ),
            Text(
              "Gelen Veri: $alinanVeri",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
                letterSpacing: 2,
                backgroundColor: Colors.amber[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
