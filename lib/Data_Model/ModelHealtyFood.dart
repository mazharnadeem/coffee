class HealtyFood {
  final String? name;
  final double? price;
  final double? weight;
  final double? calory;
  final double? protein;
  final String? item;
  final String? imgPath;

  HealtyFood(
      {this.name,
      this.price,
      this.weight,
      this.calory,
      this.protein,
      this.item,
      this.imgPath});

  static List<HealtyFood> list = [
    HealtyFood(
      name: "Fruit Salad",
      price: 20,
      weight: 130,
      calory: 460,
      protein: 30,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "image/plate_food/20.png",
    ),
    HealtyFood(
      name: "Smoked Paprika",
      price: 24,
      weight: 120,
      calory: 300,
      protein: 45,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "image/plate_food/19.png",
    ),
    HealtyFood(
      name: "Roasted Chick",
      price: 25,
      weight: 100,
      calory: 320,
      protein: 150,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "image/plate_food/12.png",
    ),
    HealtyFood(
      name: "Fresh Fruit",
      price: 30,
      weight: 30,
      calory: 65,
      protein: 50,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "image/plate_food/11.png",
    ),
    HealtyFood(
      name: "Soup Fruit",
      price: 20,
      weight: 30,
      calory: 120,
      protein: 310,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath: "image/plate_food/5.png",
    ),
  ];
}