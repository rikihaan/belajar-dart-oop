

/**
 * Operator
 * Operator adalah method dengan nama yang spesial
 * Dart memperbolehklan kita membuat method dengan nama operator
 * DAFTAR OPERATOR METHOD DI DART
 * <  +  | >>>
 * >  /  ^ []
 * <= ~/ & []=
 * >= * << ~
 * -  % >> ==
 *
 * MEMBUAT OPERATOR
 * untuk membuat operator, kita bisa seoerti membuat method, namun nama method diganti menjadi kata kunci operator di ikuti dengan operatornya
 */

// kode membuat operator
class Orange {
  int quantity = 0;

  Orange operator +(Orange other) {
    var result = Orange();
    result.quantity = quantity * other.quantity;
    return result;
  }
}

// penggunaan operator
void main() {
  var orange1 = Orange();
  orange1.quantity = 10;
  var orange2 = Orange();
  orange2.quantity = 10;

  var hasilOrange = orange1 + orange2;
  print(hasilOrange.quantity);
}
