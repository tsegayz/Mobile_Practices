

class Recipe {
  String name;
  String imageurl;
  List<Ingrident> ingrident;
  Recipe(this.name, this.imageurl, this.ingrident);
}

class Ingrident {
  double quantity;
  String name;
  String number;

  Ingrident(this.quantity, this.name, this.number);

}