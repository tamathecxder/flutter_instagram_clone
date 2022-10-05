import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';
import 'package:instagram_clone/widgets/saved_stories.dart';
import 'package:instagram_clone/widgets/tab_item.dart';
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UserInfoWidget("28", "Posts"),
                        UserInfoWidget("2M", "Followers"),
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
                fontSize: 14,
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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SavedStories(
                    storyCaption: "Holiday",
                    imgThumb: "https://picsum.photos/200/300?random=1",
                  ),
                  SavedStories(
                    storyCaption: "Las Vegas💎",
                    imgThumb: "https://picsum.photos/200/300?random=2",
                  ),
                  SavedStories(
                    storyCaption: "w/ You",
                    imgThumb: "https://picsum.photos/200/300?random=3",
                  ),
                  SavedStories(
                    storyCaption: "---Tired---",
                    imgThumb: "https://picsum.photos/200/300?random=4",
                  ),
                  SavedStories(
                    storyCaption: "On Fire🔥",
                    imgThumb: "https://picsum.photos/200/300?random=5",
                  ),
                  SavedStories(
                    storyCaption: "Vacation",
                    imgThumb: "https://picsum.photos/200/300?random=6",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_rounded, true),
              TabItem(Icons.person_outline, false),
              TabItem(Icons.tag, false),
              TabItem(Icons.event_available, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 28,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1),
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/500/500?random=${index + 1}.webp",
                fit: BoxFit.cover,
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[700],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter,
            ),
            label: "Filter",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
