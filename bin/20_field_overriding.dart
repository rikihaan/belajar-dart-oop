/**
 * Field Overriding
 * Field overriding adalah kemampuan mendeklarasikan ulang field di child class, yang sudah ada di parent class
 * Saat kita melakukan proses overriding tersebut, secara otomatis ketika kita membuat object dari class child, field yang di class parent tidak bisa diakses lagi
 * Saat melakukan method overriding, kita harus pastikan deklarasi field nya harus sama dengan di parent class nya
 */

class Person {
  String name = "Person";
  void sayHello(String name) {
    print('hello $name my name is ${this.name}');
  }
}

class OtherPerson extends Person {
  // kita overriding disini
  String name = "Other Person";
}

void main() {
  Person person1 = Person();
  person1.name;
  person1.sayHello("Dadang");

  OtherPerson person2 = OtherPerson();
  person2.name;
  person2.sayHello("Asep");
}
