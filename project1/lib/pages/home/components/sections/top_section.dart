import 'package:flutter/material.dart';
import 'package:project1/utils/breakpoints.dart';
import 'package:project1/widgets/widgets.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= Breakpoints.maxWidth) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.2,
                  child: ImageSection(),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: CardSection(
                    widthCard: 450,
                    sizeTitle: 40,
                    sizeSubtitle: 18,
                  ),
                ),
              ],
            ),
          );
        }

        //Tablet
        else if (maxWidth >= Breakpoints.mobile) {
          return SizedBox(
            height: 400,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.maxFinite,
                  child: ImageSection(),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: CardSection(
                    widthCard: 350,
                    sizeTitle: 32,
                    sizeSubtitle: 16,
                  ),
                ),
              ],
            ),
          );
        }
        //Mobile
        else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 3.2,
                child: ImageSection(),
              ),
              CardSection(
                widthCard: double.maxFinite,
                sizeTitle: 28,
                sizeSubtitle: 16,
              )
            ],
          );
        }
      },
    );
  }
}

class CardSection extends StatelessWidget {
  final double widthCard;
  final double sizeTitle;
  final double sizeSubtitle;

  const CardSection({
    Key key,
    this.widthCard,
    this.sizeTitle,
    this.sizeSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.all(16),
        width: widthCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aprenda responsividade em Flutter com esse curso",
              style: TextStyle(
                fontSize: sizeTitle,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Space(height: 8),
            Text(
              "Aprenda Flutter com Daniel Ciolfi! Cursos no padrão Udemy de preço :v",
              style: TextStyle(
                fontSize: sizeSubtitle,
                color: Colors.white,
              ),
            ),
            Space(height: 16),
            TextField(
              maxLines: null,
              cursorColor: Colors.pink,
              style: TextStyle(color: Colors.white),
              enabled: true,
              decoration: InputDecoration(
                hintText: "Pesquise um curso",
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://images.unsplash.com/photo-1546027658-7aa750153465?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1200&q=80",
      fit: BoxFit.cover,
    );
  }
}
