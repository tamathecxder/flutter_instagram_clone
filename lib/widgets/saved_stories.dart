import 'package:flutter/material.dart';

class SavedStories extends StatelessWidget {
  final String storyCaption;
  final String imgThumb;

  const SavedStories({
    required this.storyCaption,
    required this.imgThumb,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80 / 2),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75 / 2),
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.white, width: 3),
                  image: DecorationImage(
                      image: NetworkImage(imgThumb), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            storyCaption,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
