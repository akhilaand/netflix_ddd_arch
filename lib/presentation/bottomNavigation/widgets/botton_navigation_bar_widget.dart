import "package:flutter/material.dart";
import 'package:netflix_ddd_arch/core/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return BottomNavigationBar(
              backgroundColor: backGroundColor,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              currentIndex: index,
              selectedItemColor: white,
              unselectedItemColor: Colors.grey.shade600,
              selectedIconTheme: const IconThemeData(color: white),
              unselectedIconTheme: const IconThemeData(color: grey600),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_max_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections_outlined), label: "New & Hot"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions_outlined),
                    label: "Fast Laughs"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download_outlined), label: "Downloads"),
              ]);
        });
  }
}
