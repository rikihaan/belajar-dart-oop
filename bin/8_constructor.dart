/**
 * Saat kita membuat object, maka kita seperti memanggil sebuah function atau method, karena kita menggunakan () kurung
 * Di dalam class, kita bisa membuat constructor, cunstrictor adalah metehod yang akan di panggila saat object di buat 
 * mirip seperti di method, kita bisa memberi parameter di constructor 
 * Nama contructor harus sama dengan nama class,dan tidak membutuhkan kata kunci void atau return value
 * ketika kita menambahkan constructor pada class, maka saat membuat object baru kita wajib mengikuti parameter yang ada di constructor
 */

// kode membuat contructor
class Person {
  String name = "guest";
  String? address;
  final String country = "Indonesia";

  // constructor
  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }

  void sayHello(String paramName) {
    print('Hello $paramName my name is $name form $address');
  }
}

void main() {
  // membuat object dari class yang memiliki constructor parameter
  var person1 = Person("Asep Riki", "Sukabumi");
  person1.sayHello("Dadang");
}
