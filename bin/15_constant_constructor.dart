/**
 * saat kita membuat class yang datanya tidak pernah berubah(immutable), ada baiknya kita buat constructor dalam bentuk constant
 * Untuk membuat constant constructor kita bisa gunakan kata kunci const
 * keuntungan saat kita menggunkan constructor constant adalah, ketika kita membuat constant object, secara otomatis objeck yang sama akan di gunakan oleh si dart nya
 */

// tanpa costructor constant
// class ImmutablePoint {
//   int x;
//   int y;

//   ImmutablePoint(this.x, this.y);
// }

// dengan constructor constant
class ImmutablePoint {
  final int x;
  final int y;
  const ImmutablePoint(this.x, this.y);
}

void main() {
  // tanpa constructor constant
  //var point1 = ImmutablePoint(10, 10);
  //var point2 = ImmutablePoint(10, 20);

  // lalu kita cek apakah objectnya yang sama yang di kembalikan oleh dart
  // print(point1 == point2); //false

  var point1 = const ImmutablePoint(10, 10);
  var point2 = const ImmutablePoint(10, 10);
  print(point1 == point2); //true
}
