/**
 * Enum
 * Enum merupakan fitur untuk membuat type data yang sudah jelas nilainya
 * untuk membuat Enum, kita bisa menggunakan kata kunci enum
 */

// kode membuat enum
enum CustumerLevel { regular, premium, vip }

class Custumer {
  String name;
  CustumerLevel level;

  Custumer(this.name, this.level);
}

// menggunakan enum
void main() {
  Custumer custumer1 = Custumer("Asep Riki", CustumerLevel.premium);
  print(custumer1.name);
  print(custumer1.level);

  var custumer2 = Custumer("Dadang", CustumerLevel.vip);
  print(custumer2.name);
  print(custumer2.level);

  // untu memanggil semua value type data enum kita gunakan all
  print(CustumerLevel.values);
}
