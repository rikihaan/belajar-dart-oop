/**
 * Exception
 * saat kita membuat aplikasi, kita tidak akan terhidar dari yang namanya error
 * Error di di reprensentasikan dengan istilah Exception dan semua di representasikan dalam bentuk class Exception
 * Kita bisa menggunakan class exception sendiri, atau menggunakan yang sudah di sediakan
 * untuk membuat exception, kita bisa menggunkan kata kunci throw, di ikuti dengan object exception nya
 */

// kode membuat exception
class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException('username is blank');
    } else if (password == "") {
      throw ValidationException('Password is blank');
    } else if (username != "riki") {
      throw Exception("username is worng");
    } else if (password != "riki") {
      throw Exception("password is worng");
    }
  }
}

void main() {
  Validation.validate("", "");
  Validation.validate('Joko', 'Joko');
}

/**
 * MEMBUAT CLASS EXCEPTION
 * selain menggunkan class exception yang sudah tersedia, kita juga bisa menggunkan class Exception sendiri
 * Tidak ada kontrak dalam pembuatan class exception, kita bisa membuat class biasa
 * Namun sangat direkomendasikan jika membuat class exception baru, kita melakukan implements ke class Exception
 */

// Membuat class Exception Sendiri
class ValidationException implements Exception {
  String message;
  ValidationException(this.message);
}
