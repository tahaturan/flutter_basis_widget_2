import 'package:flutter/material.dart';

class PopUpMenuKullanimi extends StatefulWidget {
  const PopUpMenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopUpMenuKullanimi> createState() => _PopUpMenuKullanimiState();
}

class _PopUpMenuKullanimiState extends State<PopUpMenuKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PopUp Menu Kullanimi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PopupMenuButton(
                child: const Icon(Icons.arrow_downward_sharp),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: const [
                        Text("Evet"),
                        Icon(Icons.done_outline_rounded),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: const [
                        Text("Hayir"),
                        Icon(Icons.close_sharp),
                      ],
                    ),
                    onTap: () {
                      debugPrint("Hayir Secildi onTap Tarafi");
                    },
                  )
                ],
                onCanceled: () {
                  debugPrint("Secim Yapilmadi");
                },
                onSelected: (int? value) {
                  if (value == 1) {
                    debugPrint("Evet Secildi");
                  } else if (value == 2) {
                    debugPrint("Hayir Secildi");
                  }
                },
              )
            ],
          ),
        ));
  }
}
