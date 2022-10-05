import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  UserInfoWidget(this.value, this.title);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
