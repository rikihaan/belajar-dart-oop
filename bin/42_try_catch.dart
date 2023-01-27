import '41_Exception.dart';

/**
 * try Catch
 * saat kita memenggil sebuah method yang bisa menyebabkan exception, maka secara otomatis program akan terhenti
 * jika kita tidak ingin program berhenti, kita perlu menangkap exception tersebut, dan melakukan sesusatu ketika terjasdi exceprion 
 * untuk menangkap exception kita bisa menggunakan try catch 
 * Cara menggunkan try catch sangat mudah, di block try, kita panggil method yang bisa menyebabkan exception
 * dan di block vatch kita bisa melakukan apapun ketika terjadi exception
 */

void main() {
  // try {
  //   Validation.validate('', '');
  // } on ValidationException {
  //   print('validation error');
  // }
  // print('selesai');

  // menangkap object exception
  // try {
  //   Validation.validate("", "");
  // } on ValidationException catch (e) {
  //   print('error: ${e.message}');
  // }

  // multiple try catch
  try {
    Validation.validate("1", '1');
  } on ValidationException catch (e) {
    print('error ${e.message}');
  } on Exception catch (message) {
    print('error: ${message.toString()}');
  }
}
