/**
 * saat membuat named constructor, kita bisa memanggil default constructor,atau istilannya adalah melakukan redirecting constructor
 * Cara membuat redirecting Constructor adalah dengan menambahkan : (titik dua), lalu di ikuti dengan memanggil this(parameter), dimana this() disini adakah di anggap mengakses default constructor
 * saat membuat redirecting constructor kita tidak bisa menambahkan body pada redirecting Constructor
 */

class Person {
  String name = "Guest";
  String? address;

  Person(this.name, this.address) {}

  Person.withName(String name) : this(name, "");
  Person.withAddress(String address) : this("", address);

  void sayHello(String name) {
    print('Hello $name my name ${this.name} form ${this.address}');
  }

  /**
   * redirecting bisa juga dilakukan ke named constructor
   * Caranya dengan kita ganti saat memanggil this dengan this.namaContructornya
   */

  Person.fromJakarta() : this.withAddress("Jakarta");
}

void main() {
  Person person1 = Person("Riki", "Bandung");
  person1.sayHello("andi");

  Person person2 = Person.withAddress("Kuala namu");
  person2.sayHello("Ucup");

  Person person3 = Person.withName("Rendi");
  person3.sayHello("megi");

  Person person4 = Person.fromJakarta();
  person4.sayHello("Nani");
}
