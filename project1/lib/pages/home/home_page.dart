import 'package:flutter/material.dart';
import 'package:project1/pages/home/components/components.dart';
import 'package:project1/utils/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth >= Breakpoints.mobile
              ? PreferredSize(
                  child: AppBarWeb(),
                  preferredSize: Size(double.infinity, 72),
                )
              : PreferredSize(
                  child: AppBarMobile(),
                  preferredSize: Size(double.infinity, 56),
                ),
          drawer: constraints.maxWidth >= Breakpoints.mobile ? null : Drawer(),
        );
      },
    );
  }
}
