class Galeries {
  String name;
  String img;

  Galeries(this.name, this.img);

  static List<Galeries> createGaleries() {
    return [
      Galeries("log1", "assets/images/log1.jpg"),
      Galeries("log2", "assets/images/log2.jpg"),
      Galeries("log3", "assets/images/log3.jpg"),
      Galeries("log4", "assets/images/log4.jpg"),
      Galeries("log5", "assets/images/log5.jpg"),
      Galeries("log6", "assets/images/log6.jpg"),
      Galeries("log7", "assets/images/log7.jpg"),
      Galeries("log8", "assets/images/log8.jpg"),
      Galeries("log9", "assets/images/log9.jpg"),
      Galeries("log10", "assets/images/log10.jpg"),
      Galeries("log11", "assets/images/log11.jpg"),
    ];
  }
}
