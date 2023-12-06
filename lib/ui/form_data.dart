import 'package:flutter/material.dart';
import 'mahasiswa_model.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  TextField _textField(
          TextEditingController textEditingController, String title) =>
      TextField(
        controller: textEditingController,
        decoration: InputDecoration(labelText: title),
      );

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _tahunLahirController = TextEditingController();

  void submit() {
    final Mahasiswa mahasiswa = Mahasiswa(_namaController.text,
        _nimController.text, int.parse(_tahunLahirController.text));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TampilData(data: mahasiswa)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            _textField(_namaController, "Nama"),
            _textField(_nimController, "NIM"),
            _textField(_tahunLahirController, "Tahun Lahir"),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: submit, child: const Text("Simpan")),
            )
          ],
        ),
      ),
    );
  }
}
