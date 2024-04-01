import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.categoryName,
    required this.categoryPicturePath,
    required this.onPressed,
  }) : super(key: key);

  final String categoryName;
  final String categoryPicturePath;
  final void Function() onPressed;

  final textColorPressed =
      TextStyle(color: Colors.orange, decoration: TextDecoration.underline);

  final textColorDefault = TextStyle(
    color: Colors.black,
  );
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          side: const MaterialStatePropertyAll(
              BorderSide(color: Colors.transparent)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        onPressed: onPressed,
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(categoryPicturePath),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
