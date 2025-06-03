import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app_comida/widgets/product_cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Map<String, String>> _products = [
    {
      'titulo': 'helado choco',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagen': 'assets/images/product-11-1.jpg',
    },

    {
      'titulo': 'helado',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagePath': 'assets/images/product-11-2.jpg',
    },

    {
      'titulo': 'crjnen',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagePath': 'assets/images/product-12-1.jpg',
    },

    {
      'titulo': 'dddddd',
      'precio': '\$10.99',
      'tiempo': '20 min',
      'imagePath': 'assets/images/product-12-2.jpg',
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

            // barra de categotias -->
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final category = _categories[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == _categories.length - 1 ? 0 : 16,
                    ),
                    child: _buildCategoryTtem(
                      category['emoji']!,
                      category['label']!,
                    ),
                  );
                },
              ),
            ),

            // <--barra de categotias

            // baner publicidad -->
            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 140),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0XFF1E3C72), Color(0XFF2A5298)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF1E3C72).withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: -20,
                    top: -20,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ),

                  Positioned(
                    left: -15,
                    bottom: -15,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'Limite de orden ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),
                              const Text(
                                '50% de descuento ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.5,
                                ),
                              ),

                              const SizedBox(height: 4),
                              Text(
                                'Por tu primera compra ',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14,
                                ),
                              ),

                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: const Color(0XFF1E3C72),
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  minimumSize: const Size(0, 0),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: const Text(
                                  'Orden Nueva',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: Transform.translate(
                            offset: const Offset(15, 0),
                            child: Image.asset(
                              'assets/images/product-14-1.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // <--baner publicidad
            const SizedBox(height: 24),
            // mejores productos -->
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mejores productos',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'ver todo',
                    style: TextStyle(color: Color(0XFF1E3C72)),
                  ),
                ),
              ],
            ),
            //<-- mejores productos

            // mejores productos item -->
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.66,
              ),
              itemCount: _products.length,
              itemBuilder: (context, index) {
                final product = _products[index];
                return ProductCart(
                  titulo: product['titulo'] ?? '',
                  precio: product['precio'] ?? '',
                  calorias: product['calorias'] ?? '',
                  tiempo: product['tiempo'] ?? '',
                  imagePath: product['imagePath'] ?? '',
                );
              },
            ),

            //<-- mejores productos item
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTtem(String emoji, String title) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Text(emoji, style: const TextStyle(fontSize: 34)),
          ),
        ),

        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
