import '41_Exception.dart';

/**
 * Try Catch Semua Exception
 * kadang kita tidak terlalu peduli dengan jenis exception
 * Pada kasus seperti ini, kita bisa tidak menyebutukan class nya ketika melakukan try-catch
 */
void main() {
  try {
    Validation.validate('joko', 'joko');
  } on ValidationException catch (message) {
    print('error ${message.message}');
  } catch (e) {
    print('error: ${e.toString()}');
  }
}
