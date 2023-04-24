class FashFood {
  final String? name;
  final double? price;
  final double? weight;
  final double? calory;
  final double? protein;
  final String? item;
  final String? imgPath;

  FashFood(
      {this.name,
      this.price,
      this.weight,
      this.calory,
      this.protein,
      this.item,
      this.imgPath});

  static List<FashFood> list = [
    FashFood(
      name: "Cheeses Guide",
      price: 20,
      weight: 130,
      calory: 460,
      protein: 30,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "assets/images/plate_food/4.png",
    ),
    FashFood(
      name: "Garage Bar",
      price: 24,
      weight: 120,
      calory: 300,
      protein: 45,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "assets/images/plate_food/9.png",
    ),
    FashFood(
      name: "Spagheti",
      price: 25,
      weight: 100,
      calory: 320,
      protein: 150,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "assets/images/plate_food/19.png",
    ),
    FashFood(
      name: "Gangtok Food",
      price: 30,
      weight: 30,
      calory: 65,
      protein: 50,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "assets/images/plate_food/4.png",
    ),
    FashFood(
      name: "Soup Caikaki",
      price: 20,
      weight: 30,
      calory: 120,
      protein: 310,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "assets/images/plate_food/5.png",
    ),
  ];
}
