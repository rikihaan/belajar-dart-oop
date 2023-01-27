import 'dart:mirrors';

abstract class CategoryRepository {
  void id(String id);
  void name(String name);
  void category(String category);
  void quantity(String quantity);
}

class Repository implements CategoryRepository {
  final String _name;

  // contructor
  Repository(this._name);

  // contoh method yang ada
  void sayHello() {
    print("method sayHello() emang ada");
  }

  @override
  noSuchMethod(Invocation invocation) {
    // mengambil method yang tidak ada yang di ambil oleh nosuchMethod
    var column = MirrorSystem.getName(invocation.memberName);
    // mengambil value parameer pertama dari method yang tidak ada
    var value = invocation.positionalArguments.first;
    var sql = "select * from ${this._name} where $column='$value'";
    print(sql);
  }
}
