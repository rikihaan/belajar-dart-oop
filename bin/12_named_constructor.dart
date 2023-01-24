/**
 * NAMED CONSTRUCTOR
 * constructor hanya bisa di buat satu saja, mirip seperti function atau method, kita tidak bisa membuat beberapa dengan nama yang sama
 * Namun terdapat fitur yang bernama named constructor, yaitu constructor dengan nama yang berbeda
 * Dengan menggunkan named constructor, kita bisa membuat contructor lebih dari satu, namun wajib menggunkan nama yang berbeda
 * Untuk membuat nya kita bisa menggunkan NamaClass.NamaConstructor nya
 * named constructor bisa lebih dari satu
 */

class Person {
  String name = "Guest";
  String? address;

  // Contructor 1
  Person(this.name, this.address);

  // constructor2
  Person.withName(this.name);
  //  constructor 2
  Person.withAddress(this.address);

  void sayHello(String name) {
    print('Hello $name my name is ${this.name} form ${this.address}');
  }
}

void main() {
  Person person1 = Person("Riki", "djogja");
  person1.sayHello("Dadang");

  Person person2 = Person.withAddress("Bandung");
  person2.sayHello("Agus");

  Person person3 = Person.withName("Asep");
  person3.sayHello("Anita");
}
