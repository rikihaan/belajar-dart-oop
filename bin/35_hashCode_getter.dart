import 'data/categori.dart';

/**
 * HashCode Getter
 * HashCode Getter adalah representasi integer object kita, mirip toString yang merupakan representasi String, hashCode adalah representasi integer
 * HashCode sangat bermanfaat untuk membuat struktur data unique seperti HashMap, HashSet, dan lain-lain, karena cukup menggunakan hashCode method untuk mendapatkan identitas unique object kita
 * Secara default hashCode akan mengembalikan nilai integer sesuai data di memory, namun kita bisa meng-override nya jika kita ingin
 */

void main() {
  Categori categori1 = Categori(1, 'Laptop');
  print(categori1.hashCode);

  Categori categori2 = Categori(1, 'Laptop');
  print(categori2.hashCode);
  print(categori1 == categori2);
}
