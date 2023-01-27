/**
 * Typedef
 * Typedef merupakan fitur dimana kita bisa membuat alias untuk tipe data lainnya
 * Ini cocok ketika misal terdapat class dengan nama yang sama, sehingga kita bisa menggunakan alias untuk nama lain
 * Atau kita bisa mempersingkat nama class yang panjang dengan alias
 */

import 'data/Sum.dart';

void main() {
  // kota bisa mebuat insstance object dari nama typedef nya
  var jml = Jumlah(10, 10);
  print(jml.call());
  var jml2 = Total(100, 200);
  print(jml2.call());

  // menggunakan typedef untuk function
  sayHello('riki', (name) => name.toUpperCase());
  sayHello('SUKARDI', (name) => name.toLowerCase());
}
/**
 * Typedef untuk Function
 * Typedef juga tidak hanya bisa digunakan untuk membuat alias untuk Class, tapi juga bisa digunakan untuk membuat alias untuk Function
 * Namu perlu diperhatikan, sangat direkomendasikan tetap mendeklarasikan Function menggunakan deklarasi function nya, dibandingkan menggunakan typedef
 * https://dart.dev/guides/language/effective-dart/design#prefer-inline-function-types-over-typedefs 
 */

// typedef Filter = String Function(String);
void sayHello(String name, String Function(String) filter) {
  print('Hello ${filter(name)}');
}
