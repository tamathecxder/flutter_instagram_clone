import 'package:flutter/material.dart';

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
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
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
                      borderRadius: BorderRadius.circular(140 / 2),
                    ),
                  ),
                  Container(
                    width: 108,
                    height: 108,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://picsum.photos/id/22/500/500"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100 / 2),
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
