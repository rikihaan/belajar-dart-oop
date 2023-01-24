/**
 * this keyword
 * saat kita membuat kode dalam block constructor atau method di dalam class, kita bisa guanakan kata kunci this untuk mengakses objec saat ini
 * Misal kadang kita butuh mengakses sebuah field yang nama nya sama dengan parameter method, jika langusung memanggil filenya ini bisa terkena variable shadowing atau malah memanggil parameter, hal seperti itu bisa kita lakukan dengan mengunakan kata kunci this untuk memanggil filed tersebut
 * this tidak hanya digunakan untuk mengakses field milik objec saat ini, namun juga bisa digunakan untuk mengakses method
 * This bisa di gunakan untuk mengatasi maslah shadowing
 */

// kode this
class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  Person(String name, String address) {
    // field name tidak berubah karena yang di panggil adalah name yang ada di parameter bukan di field;
    this.name = name;

    // filed addres tidak berubah karena address yang di panggil adalah addres yang berada di parameter
    this.address = address;
  }

  void sayHello(String name) {
    print('Hello $name my name is ${this.name} i form ${this.address}');
  }
}

void main() {
  Person person1 = Person("Asep Riki", "Bandung");
  person1.sayHello("Rendi");
}
