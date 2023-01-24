/**
 * METHOD EXPRESION BODY
 * saat membuat method, kadang kadang kita hanya mengunakan satu baris kode
 * jika kita membuat method dengan body yang sangat sederhana, kita bisa guankan expresion body
 * Expresion body mirip dengan anonymouse function
 */

class Computer {
  void stratUP() => print('computer is starting');
  void shutdown() => print('COmputer is shuting down');

  // mengembalikan nilai
  String getOperatingSystem() => "windows 10";
}

void main() {
  // memanggil expresion body
  var computer = Computer();
  computer.stratUP();
  print(computer.getOperatingSystem());
  computer.shutdown();
}
