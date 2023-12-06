class Mahasiswa {
  String name;
  String nim;
  int tahunLahir;
  late int umur = DateTime.now().year - tahunLahir;

  Mahasiswa(this.name, this.nim, this.tahunLahir);
}
