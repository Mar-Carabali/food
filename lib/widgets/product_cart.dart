import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final String titulo;
  final String precio;
  final String calorias;
  final String tiempo;
  final String imagePath;

  const ProductCart({
    super.key,
    required this.titulo,
    required this.precio,
    required this.calorias,
    required this.tiempo,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        imagePath,
                        height: constraints.maxWidth * 0.75,
                        width: constraints.maxWidth * 0.75,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      titulo,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
