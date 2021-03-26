import 'package:flutter/material.dart';
import 'package:project1/utils/breakpoints.dart';
import 'package:project1/widgets/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            maxCrossAxisExtent: 300,
            childAspectRatio: 1,
          ),
          shrinkWrap: true,
          itemCount: 20,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= Breakpoints.maxWidth ? 0 : 16,
          ),
          itemBuilder: (context, index) {
            return CourseItem();
          },
        );
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bW9iaWxlJTIwYXBwfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          fit: BoxFit.cover,
        ),
        Space(height: 8),
        Flexible(
          child: AutoSizeText(
            "Criação de apps Android e iOS com Flutter 2.0",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Space(height: 8),
        Text(
          "Roger Bernardo",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        Space(height: 8),
        Text(
          "R\$ 100,00",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
