import 'data/repository.dart';

/**
 * No Such Method
 * NoSuchMethod merupakan sebuah method yang terdapat di class Object yang bisa kita override untuk mendeteksi atau bereaksi ketika sebuah method yang tidak ada dipanggil
 * NoSuchMethod hanya bisa digunakan ketika tipe objectnya adalah dynamic atau sebuah abstract class
 * https://api.dart.dev/stable/2.14.4/dart-core/Object/noSuchMethod.html
 * https://api.dart.dev/stable/2.14.4/dart-core/Invocation-class.html 
 */

// kode noSuch method

// void main() {
//   dynamic repository = Repository("Product");
//   repository.category("bks");
// }

/**
 * NoSuchMethod untuk Abstract Class
 * Salah satu penggunaan NoSuchMethod yang biasanya digunakan adalah sebagai implementasi Abstract Class
 * Dengan menggunakan NoSuchMethod, kita tidak perlu mengimplementasikan method yang terdapat di abstract class lagi
 */
void main() {
  // selain itu dengan mengiplemntasikan abstrack method, jadi nosSuch method akan lebih terkontrol
  // karena method yang ada di class absract saja yang bisa di pakai

  CategoryRepository categoryRepository = Repository("Product");
  categoryRepository.quantity("q");
}

/**
 * NoSuchMethod untuk Interface
 * Selain Abstract Class, NoSuchMethod juga bisa digunakan sebagai implementasi untuk Interface
 */