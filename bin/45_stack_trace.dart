import '41_Exception.dart';

/**
 * Stact Trace
 * saat kita menangkap exception, object exception tidak memiliki informasi posisi atau lokasi terjadnya error
 * jika kita ingin mengetahui posisiatau lokasi terjadinya error, kita bisa menambahkan parameter kedua pada catchs
 * secara otomatis parameter tersebut menjadi object stactTrace
 * https://api.dart.dev/stable/2.14.4/dart-core/StackTrace-class.html
 */

// kode stact trace
void main() {
  try {
    Validation.validate('', '');
  } on ValidationException catch (message, stactTrace) {
    print('error: ${message.message}');
    print('stactTrace: ${stactTrace.toString()}');
  } finally {
    print('Program Selesai');
  }
}
