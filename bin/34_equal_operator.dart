import 'data/categori.dart';

/**
 * Equals Operator
 * Untuk membandingkan dua buah object apakah sama atau tidak, biasanya kita menggunakan operator ==
 * Secara default operator == adalah milik class Object, implementasinya jika kita menggunakan operator == milik class Object adalah akan melakukan pengecekan kesamaan object dari lokasi di memory
 * Kadang-kadang, kita ingin mengimplementasikan logika untuk membandingkan object
 * Untuk hal ini, kita bisa melakukan override operator == yang ada di class Object
 */

void main() {
  Categori categori1 = Categori(1, 'Laptop');
  Categori categori2 = Categori(1, 'Laptop');

  print(categori2 == categori1); // true
  // ini karena default dart membandikan object berdasarkan penyimpanan di momory
  print(categori1 == categori2); // false

  print(categori1.hashCode);
  print(categori2.hashCode);
}
