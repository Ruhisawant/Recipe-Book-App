import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> recipes = [
      'Spaghetti Carbonara',
      'Chicken Biryani',
      'Margherita Pizza',
      'Caesar Salad',
      'Butter Chicken',
      'Beef Tacos',
      'Sushi Rolls',
      'Chocolate Cake',
      'Grilled Salmon',
      'Vegetable Stir Fry',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Book'), backgroundColor: Colors.redAccent),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: Text(recipes[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailsScreen()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}