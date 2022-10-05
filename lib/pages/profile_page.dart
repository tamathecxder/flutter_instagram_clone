import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';
import 'package:instagram_clone/widgets/user_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: const [
            Text(
              "tamathecxder",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
            iconSize: 28,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.density_medium),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                ProfilePic(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UserInfoWidget("225", "Posts"),
                        UserInfoWidget("5.000", "Followers"),
                        UserInfoWidget("11", "Following"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Manusia Modern",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                text:
                    "Despite your best efforts, not everyone wants to be helped. Make a difference where you can and be at peace with the rest. ",
                children: [
                  TextSpan(
                      style: TextStyle(color: Colors.blue[700]),
                      text: "#keepstrong"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.blue[700]),
                text: "github.com/tamathecxder",
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: OutlinedButton(
              onPressed: () {
                print("Anda sedang klik Edit Profile");
              },
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(),
          ),
        ],
      ),
    );
  }
}

// Text(
//   "Despite your best efforts, not everyone wants to be helped. Make a difference where you can and be at peace with the rest.",
//   style: TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.normal,
//   ),
// ),