import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Image.asset("assets/empty_image.png"),
        Text(
          "Dummy title",
        ),
        Text(
          "Dummy description",
        )
      ],
    ));
  }
}
