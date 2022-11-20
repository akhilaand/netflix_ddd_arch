import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../home_screen.dart';
class BuildHomeScreenCustomAppbar extends StatelessWidget {
  final bool value;
  const BuildHomeScreenCustomAppbar({
    Key? key,
    required this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(scrollNotifier.value);
    return AnimatedContainer(

      // width: selected ? 200.0 : 100.0,
      height: value ? 80.0 : 0.0,
      curve: Curves.fastOutSlowIn,
      decoration:  BoxDecoration(
        color: red,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(1),

            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.1),

          ],
        ),
      ),
      duration: const Duration(milliseconds: 1000),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                      height:40,
                      child: Image.network("https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006-768x512.png",
                        fit: BoxFit.cover,
                      )),
                  const Spacer(),
                  SizedBox(
                      height:40,
                      child: Image.network("https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006-768x512.png",
                        fit: BoxFit.cover,
                      )),
                  kWidth,
                  Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.all(Radius.circular(2))
                    ),

                  )
                ],
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BuildTextAppBarCategories(title: "TV Shows",),
                  BuildTextAppBarCategories(title: "Movies",),
                  BuildTextAppBarCategories(title: "Categories",),

                ],
              ),
            ) 
          ],
        ),
      ),
    );
  }
}
class BuildTextAppBarCategories extends StatelessWidget {
  final String title;
  const BuildTextAppBarCategories({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600
    ),);
  }
}