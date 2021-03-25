import 'package:flutter/material.dart';
import 'package:project1/widgets/widgets.dart';

class AppBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text("Udemy"),
          Space(width: 16),
          WebAppBarContent(),
          ShoppingButton(),
          Space(width: 16),
          LoginButton(),
          Space(width: 16),
          RegisterButton(),
        ],
      ),
      centerTitle: true,
    );
  }
}

class WebAppBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(color: Colors.grey[100], border: Border.all(color: Colors.grey[600])),
                  child: Row(
                    children: [
                      Container(width: 4),
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.grey[800]),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Pesquise qualquer coisa",
                            isCollapsed: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400)
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Aprender",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (constraints.maxWidth >= 500)
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Cadastre-se",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.white),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          "Fazer login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

class ShoppingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
      onPressed: null,
    );
  }
}
