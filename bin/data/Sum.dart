class Sum {
  int first;
  int second;
  Sum(this.first, this.second);

  // membuat callable
  int call() => first + second;
}

// untuk latihan materi typedef
typedef Total = Sum;
typedef Jumlah = Sum;
