/**
 * FACTORY CONSTRUCTOR
 * Factory costructor adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat object baru, namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita inginkan
 * Misal kita ingin mengembalikan object yang sama berkali kali, kita bisa menggunakan factoroy constructor
 * Untuk membuat factory cunstructor kita bisa menggunkan kata kunci factory sebelum pembuatan contructor nya
 */

// // tanpa factory contructor
// class Database {
//   Database() {
//     print('Create New Database');
//   }

//   // lakukan redirect constructor
//   Database.get() : this();
// }

// void main() {
//   // tanpa factory constructor ======
//   // kita buat dua buah object misalkan :
//   var databese1 = Database.get();
//   var database2 = Database.get();

//   // cek apakah sama
//   print(databese1 == database2);
// }

// dengan menggunkan factory constructor
class Database {
  Database() {
    print('Create new Database');
  }

  static Database database = Database();

  // membuat factory constructor
  factory Database.get() {
    return database;
  }
}

void main() {
  var database1 = Database.get();
  var database2 = Database.get();
  print(database1 == database2);
}
