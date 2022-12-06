import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/presentation/bottomNavigation/widgets/botton_navigation_bar_widget.dart';
import 'package:netflix_ddd_arch/presentation/downloads/screen_downloads.dart';
import 'package:netflix_ddd_arch/presentation/fast_laughs/fastLaughs.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/home_screen.dart';
import 'package:netflix_ddd_arch/presentation/newAndHot/new_and_hot.dart';
import 'package:netflix_ddd_arch/presentation/search_screen/searchScreen.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});
  List pages = [
    const HomeScreen(),
    const NewAndHotScreen(),
    const FastLaughsScreen(),
     SearchScreen(),
     DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, child) {
              return pages[index];
            }),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
