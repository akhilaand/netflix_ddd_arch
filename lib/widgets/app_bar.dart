import 'package:flutter/material.dart';
class AppBarWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Downloads"),
        const Icon(Icons.cast),
        Container(
          height:50,
          width
          
        )
        

      ],
    )
  }
}