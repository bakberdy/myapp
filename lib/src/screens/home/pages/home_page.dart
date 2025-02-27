import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home/widgets/categories_bar_widget.dart';
import 'package:myapp/src/screens/home/widgets/photo_scrolling.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ScrollPhotosWidget(),
          CategoriesBar(),
        ],
      ),
    );
  }
}
