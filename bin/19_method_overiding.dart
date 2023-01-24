/**
 * Method Overiding
 * Method overiding adalah kemmpuan mendeklarasikan ulang method parent class di child class
 * saat kita melakukan proses overiding tersebut, secara otomatis ketika kita membuat object dari class child, method yang di class parent tidak bisa diakses lagi
 * Saat melakukan method overriding, kita harus pastikan deklarasi method nya harus sama dengan di parent class nya
 */

class Manager {
  String? nama;
  void sayHello(String nama) {
    print('Hello $nama my name is manager ${this.nama}');
  }
}

// class child
class VicePresident extends Manager {
  int? age;
  void sayHello(String $nama) {
    print('Hello $nama my name is Vp ${this.nama} and age ${this.age}');
  }
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
