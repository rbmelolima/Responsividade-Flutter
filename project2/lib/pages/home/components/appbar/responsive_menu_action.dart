import 'package:flutter/material.dart';
import 'package:project2/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.smallerThan(name: TABLET)],
          child: IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        Space(width: 4),
        IconButton(
          icon: Icon(Icons.home),
          color: Colors.white,
          onPressed: () {},
        ),
        Space(width: 4),
        IconButton(
          icon: Icon(Icons.send),
          color: Colors.white,
          onPressed: () {},
        ),
        Space(width: 4),
        IconButton(
          icon: Icon(Icons.favorite),
          color: Colors.white,
          onPressed: () {},
        ),
        Space(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: myImage(),
        )
      ],
    );
  }
}
