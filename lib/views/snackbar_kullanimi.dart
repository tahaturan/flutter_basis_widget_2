import 'package:flutter/material.dart';

class SnackBarKullanimi extends StatefulWidget {
  const SnackBarKullanimi({Key? key}) : super(key: key);

  @override
  State<SnackBarKullanimi> createState() => _SnackBarKullanimiState();
}

class _SnackBarKullanimiState extends State<SnackBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Merhaba"),
                  ),
                );
              },
              child: const Text(
                "Varsayilan",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Silmek Istiyor musunuz ?"),
                    action: SnackBarAction(
                        label: "Evet",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Silme islemi basarili"),
                            ),
                          );
                        }),
                  ),
                );
              },
              child: const Text(
                "SnackBar Action",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      "Internet Baglantisi Yok!",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    duration: const Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "Tekrar Dene",
                      textColor: Colors.red[400],
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text(
                "SnackBar Ozel",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
