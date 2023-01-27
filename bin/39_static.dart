/**
 * Static
 * Static merupakan sebuah kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat object nya
 * Saat kita membuat field atau method yang static, artinya dia secara otomatis bisa diakses oleh object manapun, oleh karena itu perlu hati-hati ketika membuat field atau method status
 * Field atau Method static bisa diakses oleh Method yang tidak static
 * Namun Field atau Method static tidak bisa mengakses Field atau Method yang tidak static
 * Biasanya static digunakan untuk membuat utility
 * Untuk mengakses static Field atau Method, kita bisa langsung menggunakan nama Class diikuti dengan titik dan static Field atau Method nya
 */

class Application {
  // agar field static tidak bisa di ubah maka gunakan kata kunci final;
  static final String name = "Supper Ap";
  static final String author = "Asep Riki";

  static void sayHello() {
    print("Hello it is static method");
  }
}

void main() {
  print(Application.name);
  print(Application.author);
  Application.sayHello();
}
