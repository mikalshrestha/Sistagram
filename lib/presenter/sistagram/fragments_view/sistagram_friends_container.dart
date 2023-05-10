import 'package:flutter/material.dart';
import 'package:flutter_practice/presenter/sistagram/sistagram_intro.dart';

import '../../../domain/models/friends_model.dart';

class SistagramFindFriendsContainerWidget extends StatefulWidget {

  @override
  _SistagramFindFriendsPageState createState() => _SistagramFindFriendsPageState();
}

class _SistagramFindFriendsPageState extends State<SistagramFindFriendsContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:   SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Friends",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                Padding(padding: EdgeInsets.all(16)),
                Expanded(
                  child: FindFriendsViewWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class FindFriendsViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        child:  ListView.builder(
          itemCount: friendsList.length,
          itemBuilder: (context, index) {
            final friend = friendsList[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(friend.profileImageUrl),
              ),
              title: Text(friend.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(friend.mutualFriends),
                  Text(friend.bio),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('Add Friend'),
              ),
            );
          },
        ),
      ),
    );
  }
}