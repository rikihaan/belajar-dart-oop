import 'data/Sum.dart';

/**
 * Callable Class
 * Callable Class merupakan class yang bisa dipanggil seperti function
 * Untuk membuat Callable Class, kita perlu menambahkan sebuah method bernama call() di class tersebut
 * Parameter dan Return Value dari Method tersebut bisa disesuaikan sesuai keinginan kita
 * Setelah membuat objectnya, kita bisa langsung memanggil method call() tersebut menggunakan nama objectnya saja
 */

void main() {
  // kita bisa lansung gunakan nama class nya
  var total = Sum(10, 10);
  print(total);
}
