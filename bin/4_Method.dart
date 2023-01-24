import 'package:test/expect.dart';

/***
 * METHOD
 * Selain menambahkan field, kita juga bisa menambahkan mehod ke object
 * method adalah function yang terdapat di dalam class
 * cara mendeklarasikan method di dalam block class sama seperti mendeklasikan field
 * sama seperti function biasanya, kita juga bisa menambahkan return value, dan parameter di method yang ada di dalam class
 * Untuk mengakses method tersebut, kita bisa menggunakan tanda titik(.) dan di ikuti dengan nama method() sama seperti saat memenggil field
 */

class Person {
  String name = "Guest";

  String? address;
  final String country = "Indonesia";

  void sayHello(String paramname) {
    print('Hello $paramname, my name is $name');
  }

  String getName() {
    return 'Hello $name';
  }
} 

void main() {
  // memanggil method
  var person = Person();
  person.name = "Dika";
  person.address = 'Bandung';

  person.sayHello("Asep Riki");
  print(person.getName());
}
