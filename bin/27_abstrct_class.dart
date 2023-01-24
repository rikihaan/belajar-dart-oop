import 'data/location.dart';

/**
 * Saat kita membuat class, kita bisa menjadikan sebuah class sebagai abstract class.
 * Abstract class artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan
 * Untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci abstract sebelum kata kunci class
 * Dengan demikian abstract class bisa kita gunakan sebagai kontrak untuk class child
 */

// panggil abstract class

void main() {
  City city = City("Jakarta");
  print(city.name);

  // coba langung instansiasi abstract clasnya
  //Location location = Location(); //error
  // print(location.name); //error
}
