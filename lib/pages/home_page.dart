import 'package:flutter/material.dart';
import 'package:flutter_food_order_ui/model/food_model.dart';
import 'package:flutter_food_order_ui/widgets/filter_button.dart';
import 'package:flutter_food_order_ui/widgets/foot_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            buildHeader(),
            SizedBox(
              height: 20,
            ),
            buildSearch(),
            buildFilter(),
            buildFoodList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const CircleAvatar(
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/200x200/?man"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Hello X", style: TextStyle(fontSize: 16)),
        const Text(
          "Food delivery",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search food",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.all(8),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.only(left: 12),
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.filter_list),
          ),
        )
      ],
    );
  }

  Widget buildFilter() {
    return Container(
      height: 32,
      margin: EdgeInsets.only(top: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FilterButton(
            title: "Popular",
            isSelected: true,
          ),
          FilterButton(
            title: "New Items",
            isSelected: false,
          ),
          FilterButton(
            title: "Hot deal",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo pack",
            isSelected: false,
          ),
        ],
      ),
    );
  }

  Widget buildFoodList() {
    return Container(
      height: 220,
      margin: EdgeInsets.only(top: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          FoodModel food = foodList[index];
          return FoodCard(food: food);
        },
      ),
    );
  }
}
