import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지
        Image.network(
          "https://cdn2.thecatapi.com/images/kat_7kqBi.png",
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                print('heart btn is clicked');
              },
              icon: Icon(CupertinoIcons.heart),
            ),
            IconButton(
              onPressed: () {
                print('chat bubble btn is clicked');
              },
              icon: Icon(CupertinoIcons.chat_bubble),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                print('bookmark btn is clicked');
              },
              icon: Icon(CupertinoIcons.bookmark),
            ),
          ],
        ),
        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "우리집 고양이 모모! 귀여워 ❤️우리집 고양이 모모! 귀여워 ❤️우리집 고양이 모모! 귀여워 ❤️우리집 고양이 모모! 귀여워 ❤️우리집 고양이 모모! 귀여워 ❤️우리집 고양이 모모! 귀여워 ❤️우리집 고양이 모모! 귀여워 ❤️",
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
