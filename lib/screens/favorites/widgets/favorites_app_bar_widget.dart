import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class FavoritesAppBarWidget extends PreferredSize {
  FavoritesAppBarWidget()
      : super(
          preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Favorites",
                  style: AppTextStyles.titleMedium,
                ),
              ],
            ),
          ),
        );
}
