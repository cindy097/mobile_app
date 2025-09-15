import 'package:flutter/material.dart';
import 'package:pkl_cyberlabs/views/pages/contact_page.dart';
import 'package:pkl_cyberlabs/views/widgets/custom_app_bar.dart';
import 'package:pkl_cyberlabs/views/widgets/custom_navbar.dart';
import 'package:pkl_cyberlabs/views/pages/home_page.dart';
import 'package:pkl_cyberlabs/views/pages/news_page.dart';
import 'package:pkl_cyberlabs/views/pages/about_page.dart';


class WidgetTree extends StatefulWidget {
  final int initialIndex;

  const WidgetTree({
    super.key,
    this.initialIndex = 0,
  });

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const NewsPage(),
      const AboutPage(),
      ContactPage(),
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: pages[_currentIndex],
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
