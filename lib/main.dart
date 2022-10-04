import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/profile_page.dart';

void main(List<String> args) {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
