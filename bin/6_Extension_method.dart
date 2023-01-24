/**
 * Extension method
 * Extension method adalah cara menambahkan method terhadap class yang sudah ada, tanpa harus merubah class tersebut
 * Hal ini bermanfaat jika misal class nya adalah class milik library, atau bukan class yang kita buat
 * Membuat Extension method hampir mirip dengan membuat class, namun kita perlu mengunakan kata kunci extension di ikuti dengan nama extension lalu di ikuti kata on dan nama class yang ingin kita tambahkan extension method nya
 */

// anggap ini class milik orang lain
class Person {
  void sayHello() => print('Hello My name Person');
}

// membuat extension method
extension sayGoodByeExtension on Person {
  void sayGoodBye() =>
      print('Good By Person my name extension method sayGoodbay');
}

void main() {
  Person person = Person();
  person.sayHello();
  person.sayGoodBye();
}
