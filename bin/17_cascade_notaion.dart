/**
 * CASCADE NOTATION 
 * cascade notaion merupakan operator yang bisa kita gunakan untuk memberikan beberapa operasi pada object yang sama
 * Ada dua jenis cascade notaion, yaitu
 * ...(titik titik) digunakan untuk object yang tidak nullable
 * ?..(tanda tannya titik titik) digunakan untuk object nullable
 */

// =============Tanpa Mengunakan Casecade Notation=========
class User {
  String? username;
  String? name;
  String? email;
}

// casecade notation untuk data nullable
User? createUser() {
  return null;
}

void main() {
  // Tanpa casecade notaion
  var user1 = User();
  user1.username = 'asepriki123';
  user1.name = 'Asep Riki';
  user1.email = "asepriki2014@gmail.com";

  // dengan casecade Notaion
  var user2 = User()
    ..username = 'andiodang123'
    ..name = 'Andi'
    ..email = 'andiodang@gamil.com';
  print(user2.name);

  // casecade notation untuk data nullable
  User? user3 = createUser()
    ?..username = 'rendiapriandi'
    ..name = 'Rendi'
    ..email = 'rendi@gmail.com';

  print(user3?.email);
}
