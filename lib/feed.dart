import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지
        Image.network(
          widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: isFavorite
                  ? Icon(CupertinoIcons.heart, color: Colors.black)
                  : Icon(CupertinoIcons.heart_fill, color: Colors.pinkAccent),
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
