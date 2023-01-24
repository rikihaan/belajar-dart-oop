import '24-polymorphism.dart';

/**
 * Saat menggunakan polimorfisme, kadang kita ingin melakukan konversi tipe data ke tipe data aslinya
 * Namun agar aman, sebelum melakukan konversi, pastikan kita melakukan type check (pengecekan tipe data), dengan menggunakan kata kunci is
 * Hasil operator is adalah boolean, true jika tipe data sesuai, false jika tidak sesuai
 * Untuk melakukan konversi tipe data Object, kita bisa gunakan kata kunci as
 */
void sayHello(Employe employe) {
  if (employe is VicePresident) {
    VicePresident vicePresident = employe as VicePresident;
    print('Hello Vice President ${vicePresident.name}');
  } else if (employe is Manager) {
    Manager manager = employe as Manager;
    print('hello Manager ${manager.name}');
  } else {
    print('Hello Employe ${employe.name}');
  }
}

void main() {
  sayHello(Employe("Riki"));
  sayHello(Manager("Dimas"));
  sayHello(VicePresident("Amin"));
}
