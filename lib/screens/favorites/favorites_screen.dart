import 'package:flutter/material.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/screens/favorites/widgets/button_favorite_widget.dart';
import 'package:food_app/screens/favorites/widgets/card_favorites_widget.dart';

class FavoritesScreen extends StatelessWidget {
  final productFavorite = [
    {
      "name": "Burgers",
      "price": 23.00,
      "description":
          "A Hamburger",
      "imageUrl": AppImage.beefBurger,
    },
    {
      "name": "TESTE TESTE",
      "price": 99.99,
      "description":
          "Isto é um teste",
      "imageUrl": AppImage.beefBurger,
    },
    {
      "name": "TESTE TESTE",
      "price": 99.99,
      "description":
          "Isto é um teste",
      "imageUrl": AppImage.beefBurger,
    },
    {
      "name": "TESTE TESTE",
      "price": 99.99,
      "description":
          "Isto é um teste",
      "imageUrl": AppImage.beefBurger,
    },
    {
      "name": "TESTE TESTE",
      "price": 99.99,
      "description":
          "Isto é um teste",
      "imageUrl": AppImage.beefBurger,
    },
    {
      "name": "TESTE TESTE",
      "price": 99.99,
      "description":
          "Isto é um teste",
      "imageUrl": AppImage.beefBurger,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: productFavorite.length,
                  itemBuilder: (context, index) {
                    var product = productFavorite[index];
                    return CardFavoritesWidget(
                      title: product["name"].toString(),
                      image: product["imageUrl"].toString(),
                      price: double.parse(product["price"].toString()),
                      description: product["description"].toString(),
                      onAddProduct: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
