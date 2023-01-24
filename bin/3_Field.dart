/**
 * Field/Properties/Attribute adalah data yang bisa kita sisipkan di dalam object
 * Namun sebelum kita bisa memasukan data field, kita harus mendeklarasikan data apa saja yang dimiliki oleh objec tersebut di dalam deklarasi class nya
 * Membuat field sama dengan membuat variable, namun ditempatkan di block class
 * Filed wajib dimasukan nilainya, kecuali field nya nullable
 */

class Person {
  String name = "Guest";
  String? address;
  final String Country = 'Indonesia';
}

void main() {
  /**
   * MANIPULASI FIELD
   * Field yang ada di object, bisa kita manipulasi, Tergantung final atau bukan
   * Jika final maka kita tidak bisa mengubah data field nya, namun jika tidak, kita bisa mengubah field nya
   * untuk memanipullasi data field, sama seperti pada variable 
   * Untuk mengakses filed, kita butuh kata kunci .(titik) setelah nama object dan di ikuti nama fieldnya
   */

  // mengubah data filed
  Person person = Person();
  person.name = 'Asep Riki';
  person.address = "Bogor Selatan";
  //filed country tidak bisa di ubah karena mengunakan kata kunci final

  // memenggil filed
  print(person.name);
  print(person.address);
  print(person.Country);
}
