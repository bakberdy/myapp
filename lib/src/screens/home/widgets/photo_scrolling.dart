import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/src/screens/home/widgets/image_on_top.dart';

// ignore: must_be_immutable
class ScrollPhotosWidget extends StatelessWidget {
  ScrollPhotosWidget({super.key});

  List<PhotoToHomePage> photos = [
    const PhotoToHomePage(
      pathToPhoto: "assets/home_page_assets/photo1.jpg",
    ),
    const PhotoToHomePage(
      pathToPhoto: "assets/home_page_assets/photo2.jpg",
    ),
    const PhotoToHomePage(
      pathToPhoto: "assets/home_page_assets/photo3.jpg",
    ),
    const PhotoToHomePage(
      pathToPhoto: "assets/home_page_assets/photo4.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: photos,
      ),
    );
  }
}
