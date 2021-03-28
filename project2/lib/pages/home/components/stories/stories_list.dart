import 'package:flutter/material.dart';
import 'package:project2/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(vertical: mobile ? 16 : 32),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: 16),
        itemCount: 20,
        itemBuilder: (_, i) => Story(),
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 68,
          width: 68,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.red],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundImage: myImage(),
            ),
          ),
        ),
        Space(height: 8),
        Text(
          "Roger Bernardo",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
