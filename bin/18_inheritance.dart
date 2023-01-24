/**
 * Inheritance atau pewarisan adalah kemampuan untuk menurunkan sebuah class ke class lain
 * Dalam artian kita bisa membuat class parent dan class child
 * class child hanya bisa satu class parent, namun class parent bisa punya banyak class child
 * saat sebuah class di turunkan, maka semua field dan method yang ada di class parent, secara otomatis akan dimiliki oleh class child nya
 * untuk melakukan pewarisan, di class child, kita harus mengunakan kata kunci extends di ikuti dengan nama class parent nya
 */

class Manager {
  String? nama;
  void sayHello(String nama) {
    print('Hello $nama my name is ${this.nama}');
  }
}

// class child
class VicePresident extends Manager {
  int? age;
}

void main() {
  // membuat dari object dari parent
  Manager manager = Manager();
  manager.nama = "Asep Riki";
  manager.sayHello("afgan");

  // secara otomatis class child akan memiliki field dan metdod parent nya (bisa mengakses)
  VicePresident vp = VicePresident();
  vp.nama = "Vp Dadang";
  vp.sayHello("usman");
}
