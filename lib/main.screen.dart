import 'package:app_comida/pages/cart_screen.dart';
import 'package:app_comida/pages/home_screen.dart';
import 'package:app_comida/pages/wishlist_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: IndexedStack(
        children: const [HomeScreen(), WishlistScreen(), CartScreen()],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavBarItem(
                icon: Icons.home,
                selected: _selectedIndex == 0,
                onTap: () => setState(() => _selectedIndex = 0),
              ),

              _NavBarItem(
                icon: Icons.favorite_outline,
                selected: _selectedIndex == 1,
                onTap: () => setState(() => _selectedIndex = 0),
              ),

              _NavBarItem(
                icon: Icons.shopping_cart_outlined,
                selected: _selectedIndex == 2,
                onTap: () => setState(() => _selectedIndex = 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _NavBarItem({
    super.key,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? const Color(0xFF1E3C72) : Colors.grey.shade400;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            selected
                ? BoxDecoration(
                  color: const Color(0xFF1E3C72).withOpacity(0.12),
                  shape: BoxShape.circle,
                )
                : null,
        padding: const EdgeInsets.all(12),
        child: Icon(icon, color: color, size: 28),
      ),
    );
  }
}
