import 'package:flutter/material.dart';

import 'data/food_data.dart';
import 'models/food_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FoodModel> foodData = FoodData.getData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home screen"),
      ),
      body: ListView.separated(
        itemCount: foodData.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Text("name :${foodData[index].name}"),
                Text("name :${foodData[index].price}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
