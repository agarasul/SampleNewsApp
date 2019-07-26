import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Container(
          height: 80,
          width: 100,
          child: Image.network(
              "https://github.com/agarasul/SampleNewsApp/raw/master/empty_image.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("Dummy title"),
                Text("Dummy description")
              ])
            ],
          ),
        )
      ],
    ));
  }
}
