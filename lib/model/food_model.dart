class FoodModel {
  String name;
  double price;
  String description;
  double rating;
  String image;

  FoodModel(
      {required this.description,
      required this.image,
      required this.name,
      required this.price,
      required this.rating});
}

final List<FoodModel> foodList = [
  FoodModel(
    name: "KFC Chicken fries",
    price: 29.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?kfc-fries-and-chicken",
    description: "LOREM_IPSUM",
  ),
  FoodModel(
    name: "Chicken Burger",
    price: 12.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?burger",
    description: "LOREM_IPSUM",
  ),
  FoodModel(
    name: "Drink",
    price: 29.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?drink",
    description: "LOREM_IPSUM",
  ),
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "https://source.unsplash.com/200x200/?soup",
    description: "LOREM_IPSUM",
  ),
];
