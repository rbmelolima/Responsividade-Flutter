import 'package:flutter/material.dart';
import 'package:project2/widgets/my_image.dart';
import 'package:project2/widgets/space.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class PostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
      ],
    );
  }
}

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Container(
      margin: EdgeInsets.only(bottom: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: myImage(),
                  backgroundColor: Colors.transparent,
                ),
                Space(width: 16),
                Expanded(
                  child: Text(
                    "rbmelolima",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 460,
            child: Image(
              image: myImage(),
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Space(width: 4),
                IconButton(
                  icon: Icon(Icons.message_outlined),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Space(width: 4),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Space(width: 4),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curtido por rbmelolima e outras 456 pessoas",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Space(height: 8),
                Text(
                  "Há 2 horas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          if (desktop) ...[
            Divider(color: Colors.white),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: "Adicione um comentário...",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Publicar"),
                )
              ],
            )
          ]
        ],
      ),
    );
  }
}
