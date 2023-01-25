/**
 * Interface
 * Sebelumnya kita sudah tahu bahwa abstract class bisa kita gunakan sebagai kontrak untuk class child nya.
 * Namun sebenarnya yang lebih tepat untuk kontrak adalah Interface
 * Jangan salah sangka bahwa Interface disini bukanlah User Interface
 * Interface mirip seperti abstract class, yang membedakan adalah di Interface, semua method otomatis abstract
 * Untuk mewariskan interface, kita tidak menggunakan kata kunci extends, melainkan implements
 * 
 * Membuat Interface
 * Hal yang sangat berbeda di Dart dan bahasa pemrograman Java, PHP dan lain-lain adalah saat kita membuat Interface
 * Interface di Dart bisa diambil dari class apapun, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
 * Interface dari class tersebut, bisa kita gunakan pada class lain jika kita ingin
 * Maka secara otomatis, kita harus mendeklarasikan semua method dan field yang terdapat pada class tersebut, karena yang kita ambil sebenarnya adalah interface nya, bukan class nya
 * Anggap saja Interface adalah kontrak dari pembuatan Class
 * class yg dijadikan parent saat kita ekstens berati dia sebagai class bisa, namun jika kita gunakan implemens maka secara otomatis class parent ter sebut jadi sebuah interface, dan method,field dll harus di overding
 */

class Car {
  String name = "";
  void drive() {}

  int getTire() {
    return 0;
  }
}

//class Avanza extends Car{ jika pakai ini maka Car akan menjadi class biasa, jika pakai seperti di bawah class Car jadi interface
class Avanza implements Car, Mesin {
  String name = "Avanza";
  int? _silinder;
  String? bbm;
  void drive() {
    print('${this.name} is drive');
  }

  int get silinder {
    return 0;
  }

  int getTire() {
    return 4;
  }
}

/**
 * Multiple Interface Inheritance
 * Hal yang membedakan ketika kita melakukan pewarisan adalah, kita hanya bisa melakukan extends terhadap satu class, namun kita bisa melakukan implements terhadap beberapa class
 * Hal ini dikarenakan sebenarnya implements bukanlah melakukan pewarisan, melainkan mendeklarasikan ulang seluruh method dan field
 * Anggap saja ini seperti membuat class yang berbeda, namun memiliki field dan method yang sama
 * Untuk melakukan multiple implements, kita bisa gunakan pemisah tanda koma antar class yang kita implements
 */

class Mesin {
  int? _silinder;
  String? bbm;
  int get silinder {
    return 0;
  }
}

// memanggil class implemnts
void main() {
  Car car1 = Avanza();
  print(car1.name);
  car1.drive();
  print(car1.getTire());

  var car2 = Avanza();
  car2.name = "Toyota Veloz";
  car2.drive();
  print(car2.getTire());

  Avanza car3 = Avanza();
  car3.name = "Inova";
  car3.bbm = "Solar";
  print(car3.name);
  print(car3.bbm);
  print(car3.getTire());
  print(car3.silinder);
  car3.drive();
}
