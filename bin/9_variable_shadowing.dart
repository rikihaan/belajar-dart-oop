/**
 * Variable shadowing adalah kejadian ketika kita membuat nama variable dengan nama yang sama di scope yang menutupi variable dengan nama yang sama di scope di atasnya
 * Ini Bisa terjadi seperti kita  membuat nama parameter di method sama dengan nama field di class 
 * Saat terjadi variable shdowing, maka secara otomatis variable di scope di atasnya tidak bisa di akses
 */

class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  Person(String name, String address) {
    // field name tidak berubah karena yang di panggil adalah name yang ada di parameter bukan di field;
    name = name;

    // filed addres tidak berubah karena address yang di panggil adalah addres yang berada di parameter
    address = address;
  }

  void sayHello(String nama) {
    print('Hello $name my name is $name i form $address');
  }
}

void main() {
  Person person1 = Person("Asep Riki", "Bandung");
  person1.sayHello("Rendi");
}
