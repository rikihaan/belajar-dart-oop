/**
 * ToString Metho
 * Sebelumnya kita sudah bahas bahwa parent class untuk semua class kecuali null adalah Object
 * Di dalam Object, terdapat method bernama toString(), method ini merupakan method untuk representasi String dari object
 * Contohnya, saat kita menggunakan function print(object), sebenarnya yang dipanggil adalah print(object.toString())
 * kita bisa mengoveride method toString() jika kita mengiplemetasikan refresentasi data String dari class yang kita buat
 */

// kode toString Method
// class Product {
//   String? id;
//   String? name;
//   int? _quantity;

//   int? getQuantity() {
//     return _quantity;
//   }

//   // overide method toSting()
//   String toString() {
//     return 'Product {id: $id, name:$name, quantity:$_quantity}';
//   }
// }

// ambil dari data/product.dart
import "data/product.dart";

void main() {
  Product product1 = Product();
  product1.id = "P001";
  product1.name = "macbook Pro M2";
  product1.getQuantity();
  print(product1.toString());
}
