/**
 * Kadang saat membuat Constructor, biasanya kita membuat parameter yang hanya digunakan untuk mengubah nilai yang ada di field
Untuk kasus ini, kita bisa menggunakan fitur Formal Parameter, dimana pada parameter kita bisa langsung sebutkan field mana yang akan diubah
Formal Parameter hanya bisa digunakan di Constructor, tidak bisa digunakan di Method
Caranya kita cukup ubah parameternya dengan menggunakan this.namaField nya, tanpa perlu menggunakan tipe data

 */

class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  // constructor menggunkan initializing formal parameter
  Person(this.name, this.address);

  void sayHello(String name) {
    print('Hello $name my name is ${this.name} i form ${this.address}');
  }
}

void main() {
  Person person1 = Person("Asep Riki", "Bandung");
  person1.sayHello("Rendi");
}
