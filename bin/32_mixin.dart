/**
 * Mixin
 * Mixin merupakan reusable code yang bisa digunakan di kelas lain tanpa harus terkendala dengan pewarisan
 * Mixin mirip melakukan copy paste code di beberapa tempat, namun dengan cara yang lebih baik
 * Dengan Mixin, kita bisa membuat kode yang sama pada beberapa class
 * Satu Class bisa menambah lebih dari satu mixin, sama seperti interface
 * Untuk membuat Mixin, kita bisa menggunakan kata kunci mixin
 * Untuk menggunakan Mixin, kita bisa menggunakan kata kunci with, diikuti dengan Mixin nya
 */

mixin Playable {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stopable {
  String? name;
  void stop() {
    print('Stop $name');
  }
}

// menggunakan mixin
class Video with Playable, Stopable {}

class Audio extends Multimedia with Playable, Stopable, Repeatable {}

void main() {
  Video video = Video();
  video.name = "JakaTingkir.mp4";
  video.play();
  video.stop();

  // audio
  Audio audio = Audio();
  audio.name = "judika.mp3";
  audio.play();
  audio.stop();
  audio.repeat();
}

/**
 * Membatasi Mixin
 * Secara default, semua class bisa menggunakan Mixin
 * Namun jika kita ingin membatasi hanya class turunan tertentu, kita bisa tambahkan kata kunci on, diikuti dengan class yang kita batasi pada Mixin nya
 */

// kode membatasio mixin
abstract class Multimedia {}

// membatasi mixin ini hanya bisa digunakan untuk class abstrak keturunan (inheritance) Multi media dengan menambahkan kata kunci on
mixin Repeatable on Multimedia {
  String? name;

  void repeat() {
    print('Repeat $name');
  }
}
