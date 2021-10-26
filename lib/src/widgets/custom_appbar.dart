import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.sortButton,
    required this.searchButton,
    required this.shoppingCartButton,
  }) : super(key: key);

  final VoidCallback sortButton, searchButton, shoppingCartButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 50,
        child: Row(
          children: [
            IconButton(
              onPressed: this.sortButton,
              icon: Icon(Icons.sort),
            ),
            Spacer(),
            IconButton(
              onPressed: this.searchButton,
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: this.shoppingCartButton,
              icon: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
