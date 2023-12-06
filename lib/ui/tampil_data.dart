import 'package:flutter/material.dart';
import 'mahasiswa_model.dart';

class TampilData extends StatelessWidget {
  final Mahasiswa data; //contoh data yang di-passing

  const TampilData({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Column(children: [
        Text(
            "Nama saya ${data.name}, NIM ${data.nim}, dan umur saya ${data.umur} tahun")
      ]),
    );
  }
}
