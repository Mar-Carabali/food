import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Map<String, String>> _products = [
    {
      'title': 'pizza',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagen': 'assets/pizza.png',
    },

    {
      'title': 'pizza',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagen': 'assets/pizza.png',
    },

    {
      'title': 'pizza',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagen': 'assets/pizza.png',
    },

    {
      'title': 'pizza',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagen': 'assets/pizza.png',
    },
  ];

  static const List<Map<String, String>> _categories = [
    {'emoji': '🍔', 'label': 'Meat'},
    {'emoji': '🥩', 'label': 'foot'},
    {'emoji': '🍜', 'label': 'suchi'},
    {'emoji': '🍽️', 'label': 'bebidas'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hello mar',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        const Text(
                          'Carbali Castillo',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            //categotias
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final category = _categories[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == _categories.length - 1 ? 0 : 16,
                    ),
                    child: _buildCategoryTtem(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
