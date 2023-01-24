/**
 * Polymorphism berasal dari bahasa Yunani yang berarti banyak bentuk
 * Dalam OOP, Polymorphism adalah kemampuan sebuah object berubah bentuk menjadi bentuk lain
 * Polymorphism erat hubungannya dengan Inheritance
 */

class Employe {
  String? name;

  // constructor
  Employe(this.name);
}

class Manager extends Employe {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void sayHello(Employe employe) {
  print('Hello ${employe.name}');
}

void main() {
  // membuat instant Employe dengan type employe
  Employe employe = Employe("Diki");
  print(employe.name);

  // walaupun variable employe bertipe data employe. tapi bisa menampung type data tutunan nya (berubah bentuk)
  employe = Manager("Riki");
  print(employe.name);

  employe = VicePresident("Agus");
  print(employe.name);

  // Plolymorphism Method
  sayHello(Employe("Joko"));
  sayHello(Manager("Suratman"));
  sayHello(VicePresident("Sanusi"));
  //sayHello('toto'); //error karena parameter harus type Employe atau keturunannya
}
