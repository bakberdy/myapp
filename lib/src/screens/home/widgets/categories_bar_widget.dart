import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/home/widgets/category_button.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print("pressed");
    }

    final List<CategoryButton> categories = [
      CategoryButton(
        categoryName: "Завтраки",
        categoryPicturePath: "assets/home_page_assets/breakfast.png",
        onPressed: onPressed,
      ),
      CategoryButton(
        categoryName: "Вторые",
        categoryPicturePath: "assets/home_page_assets/second.png",
        onPressed: onPressed,
      ),
      CategoryButton(
        categoryName: "Супы",
        categoryPicturePath: "assets/home_page_assets/soup.png",
        onPressed: onPressed,
      ),
      CategoryButton(
        categoryName: "Десерт",
        categoryPicturePath: "assets/home_page_assets/desert.png",
        onPressed: onPressed,
      ),
      CategoryButton(
        categoryName: "Выпечки",
        categoryPicturePath: "assets/home_page_assets/bakery.png",
        onPressed: onPressed,
      ),
    ];

    return Container(
      height: 140,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Фильтр"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories,
            ),
          ),
        ],
      ),
    );
  }
}
