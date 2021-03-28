import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project2/widgets/space.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'responsive_menu_action.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 1000),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [Condition.largerThan(name: MOBILE)],
                child: Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 16,
                          ),
                          Space(width: 4),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isCollapsed: true,
                                hintText: "Pesquisar",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [Condition.largerThan(name: MOBILE)],
                replacement: ResponsiveMenuAction(),
                child: Expanded(child: ResponsiveMenuAction(),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
