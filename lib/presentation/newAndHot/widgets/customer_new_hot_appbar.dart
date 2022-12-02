import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
class CustomNewAndHotAppbar extends StatelessWidget {
  const CustomNewAndHotAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: const Text("New & Hot",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
      actions: const [
        Icon(Icons.cast,size: 30,),
        kWidth,
        CircleAvatar(
          backgroundColor:blue,
          radius: 15,
        ),
        kWidth
      ],
      bottom:   const PreferredSize(
        preferredSize: Size(0.0, 0.0),
        child: SizedBox(
          height:39,
          child: TabBar(
              isScrollable: true,
              labelColor: black,
              unselectedLabelColor: white,
              labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),
              indicator: BoxDecoration(


                  color: white,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              tabs:[
                Tab(text: "🍿 Coming soon",),
                Tab(text: "🫣  Everyone's Watching",),
              ]),
        ),
      ),
    );
  }
}
