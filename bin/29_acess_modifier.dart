/**
 * Access Modifier
 * Secara default, saat kita membuat Field atau Method dalam sebuah class, maka semua Field dan Method tersebut bisa diakses oleh siapa saja
 * Kadang-kadang kita ingin menyembunyikan Field atau Method
 * Untuk menyembunyikan akses Field atau Method, kita bisa menambahkan _ (underscore) di awal Field atau Method nya
 * Secara otomatis Field atau Method tersebut, hanya bisa di akses dari file tersebut, dan artinya tidak bisa diakses dari luar file
 * 
 */

// memanggil class yang  memiliki file akses modifier
import "data/product.dart";

void main() {
  Product product = Product();
  product.id = 'P-001';
  product.name = "Macbook Pro";
  //product._quantity = 90; //error karena access modifiernya private
  print(product.id);
  print(product.name);
  print(product.getQuantity());
}
