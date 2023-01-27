/**
 * Metadata
 * Metadata merupakan fitur yang digunakan untuk menambah informasi tambahan pada kode program yang kita buat
 * Untuk menambahkan informasi tambahan ke dalam kode program kita, kita bisa menggunakan Annotation yang dimulai dengan karakter @ lalu diikuti dengan constant atau memanggil constant constructor
 * 
 * STANDART ANOTATION
 * @Deprecated Menandai bahwa kode tersebut sudah tidak direkomendasikan digunakan
 * @override Menandai bahwa field atau method tersebut merupakan overriding dari parent nya
 */

// kode standart annotation
class Sample {
  @override
  String toString() {
    return "Sample";
  }

  @Deprecated('do not use it anymore')
  void doNotCallMe() {}
}

// membuat annotation
///Membuat Annotation sangat mudah, kita bisa membuat constant atau bisa membuat Class dengan menggunakan Constant Constructor
class Todo {
  final String todo;
  const Todo(this.todo);
}

class Applicationlogic {
  @Todo('will be implemented in next feature')
  void run() {}
}

/// Manfaat Meta Data
/// Saat ini, metadata mungkin tidak terlihat begitu berguna
/// Namun saat nanti kita sudah belajar tentang Reflection, maka kita akan bisa tahu manfaat yang bisa kita dapat ketika menggunakan Metadata
