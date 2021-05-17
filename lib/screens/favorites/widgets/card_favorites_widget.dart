import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/screens/favorites/widgets/button_favorite_widget.dart';

class CardFavoritesWidget extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final String description; //added
  final Function onAddProduct;

  const CardFavoritesWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    required this.description,
    required this.onAddProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(4, 4), // changes position of shadow
          )
        ],
      ),

      // conteúdo do cartão (imagem, título, descrição, preço e o botão de favoritos)
      child: Row(
        children: [
          // imagem ##########################################################################
          Expanded(
            flex: 5,
            child: Image.asset(
              this.image
            )
          ),

          // Título, Descrição e preço ######################################################
          Expanded(
            flex: 10,
            child: Column(
              children: [

                //Título ####################################################################
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      this.title,
                      style: AppTextStyles.subtitle17,
                    ),
                  ],
                ),

                //Descrição ##################################################################
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      this.description,
                      style: AppTextStyles.subtitle14,
                    ),
                  ],
                ),

                //Preço ######################################################################
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "R\$ ${this.price.toStringAsFixed(2)}",
                      style: AppTextStyles.subtitle17,
                    )
                  ],
                ),
              ],
            ),
          ),

          // Botão ##################################################################
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonFavoriteWidget(
                      icon:
                        Icon(Icons.favorite, color: AppColors.red),
                      onTap: (){}, //no futuro ao pressionar desfavoritará o item
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
