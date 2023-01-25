class Categori {
  int id;
  String name;
  Categori(this.id, this.name);

  // kita overaide euqals operaor ==
  bool operator ==(Object other) {
    if (other is Categori) {
      if (id != other.id) return false;
      if (name != other.name) return false;
      return true;
    } else {
      return false;
    }
  }

  // Override HashCode Method
  int get hashCode {
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }
}
