/**
 * Abstract Method
 * Saat kita membuat class yang abstract, kita bisa membuat abstract method juga di dalam class abstract tersebut
 * Saat kita membuat sebuah abstract method, kita tidak boleh membuat block method untuk method tersebut
 * Artinya, abstract method wajib di override di class child
 */

abstract class Animal {
  String? name;
  void run();
}

// membuat class child cat
class Cat extends Animal {
  void run() {
    print('cat $name is running');
  }
}

// memanggil class child dari class abstract
void main() {
  Animal animal = Cat();
  animal.name = 'Puss Yana';
  animal.run();
}
