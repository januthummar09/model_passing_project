import '../models/food_model.dart';

class FoodData {
  static List<FoodModel> getData() {
    return [
      FoodModel(name: "pizza", price: 200),
      FoodModel(name: "burger", price: 100),
      FoodModel(name: "sendwish", price: 150),
      FoodModel(name: "panipuri", price: 50),
      FoodModel(name: "qwe", price: 100),
    ];
  }
}
