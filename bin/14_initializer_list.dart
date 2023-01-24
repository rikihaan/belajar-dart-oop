/**
 * INITIALIZER LIST
 * saat kita membuat constructor atau named constructor, terdapat firur yang bernama initializer List
 * Initializer list merupakan tempat dimana kita bisa mengubah field pada object, sebelum block body constructor
 * hal ini menjadi lebih mudah dibandingkan mengubah field di body constructor
 */

class Custumer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Custumer(this.fullName)
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {
    print('Create new Custumer');
  }

  void sayHello() {
    print('Hello my name custumer $firstName $lastName');
  }
}

void main() {
  Custumer custumer1 = Custumer("Asep Riki");
  custumer1.sayHello();

  var custumer = Custumer("Andi Odang");
  custumer.sayHello();
}
