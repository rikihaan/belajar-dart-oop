/**
 * Import adalah kemampuan untuk menggunakan class, function atau variable yang berada di file yang berbeda
 * Import sangat cocok digunakan ketika kode program kita sudah banyak dan ditempatkan di bayak file
 */

// mengunakan import untukmemanggil class category di forder data/categori.dart
import "data/categori.dart";

void main() {
  Categori categori = Categori(1, "Perlengkapan Rumah Tangga");
  print(categori.id);
  print(categori.name);
}
