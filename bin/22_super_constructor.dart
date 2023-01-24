
/**
 * Tidak hanya untuk mengakses method atau field yang ada di parent class, kata kunci super juga bisa digunakan untuk mengakses constructor
 * Namun syaratnya untuk mengakses parent class constructor, kita harus mengaksesnya di dalam class child constructor
 * Memanggil super constructor hanya bisa dilakukan dalam bentuk Redirecting Constructor
 */
class Manager {
  String? name;
  // constructor manager (parent)
  Manager(String name) {
    this.name = name;
  }

 void sayHello(String name){
  print('Heloo $name my name is ${this.name}');
  
 }

}

class VicePresident extends Manager{

  // constructor child
  VicePresident(String name): super(name);

}

void main(){
  VicePresident vicePresident =VicePresident("dandang");
  vicePresident.sayHello("budi");
}
