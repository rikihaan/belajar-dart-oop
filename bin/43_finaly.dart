import '41_Exception.dart';

/**
 * Finally
 * Dalam try-catch, kita bisa menambahkan block finally
 * Block Finally ini adalah block dimana akan selalu di exsekusi baik terjai exception atau tidak
 * ini sangat cocok ketika kita ingin melakukan sesuatu. tidak peduli sukses ataupun gagal
 */

// kode finally
void main() {
  try {
    Validation.validate('riki', 'riki');
  } on ValidationException catch (ms) {
    print('error: ${ms.message}');
  } on Exception catch (message) {
    print('error: ${message.toString()}');
  } finally {
    print("Selesai");
  }
}
