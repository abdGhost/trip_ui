import 'package:flutter/material.dart';
import 'package:trip_ui/widgets/make_page_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        _onScroll();
      });
  }

  void _onScroll() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          makePage(image: 'assets/images/one.jpg', title: 'USA'),
          makePage(image: 'assets/images/two.jpg', title: 'USA'),
          makePage(image: 'assets/images/three.jpg', title: 'USA'),
          makePage(image: 'assets/images/four.jpg', title: 'USA'),
        ],
      ),
    );
  }
}
