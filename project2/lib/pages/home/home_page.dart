import 'package:flutter/material.dart';

import '../pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ResponsiveAppBar(),
        preferredSize: Size(double.infinity, 52),
      ),
      backgroundColor: Color(0xFF212121),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesList(),
                    PostsList(),
                  ],
                ),
              ),
              RightPanel()
            ],
          ),
        ),
      ),
    );
  }
}
