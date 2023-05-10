import 'package:flutter/material.dart';

import '../../../domain/models/profile_model.dart';

class SistagramProfileWidgetContainer extends StatefulWidget {

  @override
  _SistagramProfilePageState createState() => _SistagramProfilePageState();

}

class _SistagramProfilePageState extends State<SistagramProfileWidgetContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Padding(padding: EdgeInsets.all(16)),
                  Expanded(
                    child: ProfileViewWidget(),
                  )
                ],
              ),
            ),
          ),
        )
      );

  }

}

class ProfileViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(myProfile.profileImageUrl),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myProfile.name,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      myProfile.username,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      myProfile.bio,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Text(
                          '${myProfile.followers} Followers',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(width: 16.0),
                        Text(
                          '${myProfile.following} Following',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(width: 16.0),
                        Text(
                          '${myProfile.posts} Posts',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of grid columns
              ),
              itemCount: myProfile.postsImages.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(myProfile.postsImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )
    );
  }
}
