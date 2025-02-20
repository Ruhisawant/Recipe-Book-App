import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String ingredients;
  final String instructions;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(ingredients),
            
            const SizedBox(height: 16),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(instructions),
          ],
        ),
      ),
    );
  }
}
