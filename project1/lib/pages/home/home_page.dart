import 'package:flutter/material.dart';
import 'package:project1/pages/home/components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth >= 500
              ? PreferredSize(
                  child: AppBarWeb(),
                  preferredSize: Size(double.infinity, 72),
                )
              : PreferredSize(
                  child: AppBarMobile(),
                  preferredSize: Size(double.infinity, 56),
                ),
          drawer: Drawer(),
        );
      },
    );
  }
}
