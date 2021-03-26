import 'package:flutter/material.dart';
import 'package:project1/widgets/space.dart';

class BenefitsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildBenefit(String title, String text) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star_outlined,
            color: Colors.white,
            size: 50,
          ),
          Space(width: 8),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Space(height: 8),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      );
    }

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 16,
        children: [
          buildBenefit("+ 45.958 alunos", "Projetos reais"),
          buildBenefit("+ 45.958 alunos", "Projetos reais"),
          buildBenefit("+ 45.958 alunos", "Projetos reais"),
        ],
      ),
    );
  }
}
