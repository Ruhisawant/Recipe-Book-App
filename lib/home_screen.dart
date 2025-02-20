import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recipes = [
      {
        'title': 'Spaghetti Carbonara',
        'ingredients': 'Spaghetti, Eggs, Parmesan, Pancetta, Black Pepper',
        'instructions': 'Boil pasta, cook pancetta, mix with eggs & cheese, serve hot.'
      },
      {
        'title': 'Chicken Biryani',
        'ingredients': 'Chicken, Basmati Rice, Spices, Yogurt, Onions',
        'instructions': 'Marinate chicken, cook rice, layer, and steam together.'
      },
      {
        'title': 'Margherita Pizza',
        'ingredients': 'Dough, Tomato Sauce, Mozzarella, Basil, Olive Oil',
        'instructions': 'Prepare dough, spread sauce, top with cheese & basil, bake.'
      },
      {
        'title': 'Caesar Salad',
        'ingredients': 'Lettuce, Croutons, Parmesan, Caesar Dressing, Chicken (optional)',
        'instructions': 'Toss lettuce with dressing, top with croutons & cheese.'
      },
      {
        'title': 'Butter Chicken',
        'ingredients': 'Chicken, Butter, Tomato Puree, Cream, Spices',
        'instructions': 'Cook chicken, prepare sauce, simmer together, serve with naan.'
      },
      {
        'title': 'Beef Tacos',
        'ingredients': 'Ground Beef, Tortillas, Lettuce, Cheese, Salsa',
        'instructions': 'Cook beef, assemble tacos, serve with salsa.'
      },
      {
        'title': 'Sushi Rolls',
        'ingredients': 'Rice, Nori, Fish, Vegetables, Soy Sauce',
        'instructions': 'Roll ingredients in nori, slice, and serve with soy sauce.'
      },
      {
        'title': 'Chocolate Cake',
        'ingredients': 'Flour, Cocoa Powder, Sugar, Eggs, Butter',
        'instructions': 'Mix ingredients, bake at 350°F, and let cool before serving.'
      },
      {
        'title': 'Grilled Salmon',
        'ingredients': 'Salmon, Lemon, Garlic, Olive Oil, Herbs',
        'instructions': 'Marinate salmon, grill for 5 mins per side, serve hot.'
      },
      {
        'title': 'Vegetable Stir Fry',
        'ingredients': 'Mixed Vegetables, Soy Sauce, Garlic, Ginger, Oil',
        'instructions': 'Stir-fry veggies with sauce and seasonings, serve hot.'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Book'), backgroundColor: Colors.redAccent),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: const Icon(Icons.restaurant_menu, color: Colors.black),
                title: Text(
                  recipes[index]['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.black),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        title: recipes[index]['title']!,
                        ingredients: recipes[index]['ingredients']!,
                        instructions: recipes[index]['instructions']!,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}