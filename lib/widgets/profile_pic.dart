import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 116,
          height: 116,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue[600]!,
                Colors.purple[400]!,
                Colors.pink[400]!,
                Colors.orange[600]!,
                Colors.yellow[700]!
              ],
            ),
            borderRadius: BorderRadius.circular(116 / 2),
          ),
        ),
        Container(
          width: 108,
          height: 108,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/22/500/500"),
              fit: BoxFit.cover,
            ),
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(108 / 2),
            border: Border.all(color: Colors.white, width: 3),
          ),
        ),
      ],
    );
  }
}
