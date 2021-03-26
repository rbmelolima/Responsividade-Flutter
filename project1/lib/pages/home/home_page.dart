import 'package:flutter/material.dart';
import 'package:project1/utils/utils.dart';

import 'components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
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
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: Breakpoints.maxWidth),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopSection(),
                    BenefitsSection(),
                    CoursesSection(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
