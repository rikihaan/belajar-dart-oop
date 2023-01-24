/**
 * Encapsulation
 * Encapsulation artinya memastikan data sensitif sebuah object tersembunyi dari akses luar
 * Hal ini bertujuan agar kita bisa menjaga agar data sebuah object tetap baik dan valid
 * Untuk mencapai ini, biasanya kita akan membuat semua field yang tidak bisa diakses dari luar
 * Agar bisa diubah, kita akan menyediakan method untuk mengubah dan mendapatkan field tersebut
 * 
 * Getter dan Setter
 * Proses encapsulation sudah dibuat standarisasinya, dimana kita bisa menggunakan Getter dan Setter method.
 * Getter adalah function yang dibuat untuk mengambil data field
 * Getter ada function untuk mengubah data field
 * Untuk Getter, kita bisa menggunakan kata kunci get
 * Untuk Setter, kita bisa menggunakan kata kunci set
 */

// kode getter dan setter
class Rectangle {
  int _width = 0;
  int _length = 0;

  //untuk get tidak perlu menggunakan kurung siku()
  int get width {
    return _width;
  }

  set width(int value) {
    // menambahkan validasi di set
    if (value >= 1) {
      this._width = value;
    }
  }

  /**
   * Expression Body
   * Jika Getter dan Setter yang kita buat isinya hanya mengambil dan mengubah field, disarankan untuk menggunakan Expression Body
   * Cara membuat Expression Body mirip seperti Anonymous Function
   */

  //Kode : Getter dan Setter Expression Body

  int get length => this._length;
  set length(int value) => this._length = value;
}

/**
 * Getter dan Setter Yang Tidak Perlu
 * Dalam bahasa pemrograman seperti Java atau C#, penggunaan Getter dan Setter sudah menjadi sesuatu yang sangat lumrah, hal ini karena mengakses Field dan Method sangatlah berbeda, oleh karena itu dari awal selalu dibuat Getter dan Setter
 * Di Dart, hal ini tidak berlaku, jika isi Getter dan Setter hanya melakukan redirect data ke Field, disarankan tidak perlu menggunakan Getter dan Setter, cukup langsung saja menggunakan Field
 * Hal ini dikarenakan dalam Dart, jika kedepannya kita ingin menambah Getter dan Setter, kita bisa tambahkan, tanpa harus mengubah kode client
 */

// memanggil setter dan getter pada file 30_getter_setter.dart