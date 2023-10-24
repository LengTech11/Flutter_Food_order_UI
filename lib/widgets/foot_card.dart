import 'package:flutter/material.dart';
import 'package:flutter_food_order_ui/model/food_model.dart';

class FoodCard extends StatelessWidget {
  final FoodModel food;

  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildFoodImage(),
          SizedBox(height: 8),
          buildFoodInfo(),
        ],
      ),
    );
  }

  Widget buildFoodImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            food.image,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12,
              ),
              SizedBox(width: 2),
              Text(
                "${food.rating}",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                "(1k+)",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildFoodInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          food.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "\$ ${food.price}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
