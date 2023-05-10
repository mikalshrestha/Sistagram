import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/story_model.dart';
import '../../../domain/models/timeline_model.dart';
import '../../vm/story_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../vm/user_info_vm.dart';
import '../notification_view.dart';


class SistagramHomeContainerWidget extends StatefulWidget {

  @override
  _SistagramHomePageState createState() => _SistagramHomePageState();
}

class _SistagramHomePageState extends State<SistagramHomeContainerWidget> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sistagram",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(Icons.search_outlined),
                                        onPressed: () {
                                          // Handle edit button press
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.notifications),
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                            return UserInfoWidget();
                                          }));
                                        },
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            Padding(padding: EdgeInsets.all(16)),
                            Container(
                              width: double.infinity,
                              height: 100,
                              child: StoryListViewWidget(),
                            ),
                            Container(
                              width: double.infinity,
                              height: 600,
                              child: TimelineListView(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )

      ),
    );
  }

}

class TimelineListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: timelinePosts.length,
      itemBuilder: (context, index) {
        final post = timelinePosts[index];
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(post.imageUrl),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.username,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        post.timeAgo,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(post.content),
              SizedBox(height: 8.0),
              Image.network(post.imageUrl),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.comment),
                      onPressed: () {
                        // Handle comment button press
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        // Handle share button press
                      },
                    ),
                  ),
                ],
              ),
              Divider(
                height: 1.0,
                color: Colors.grey,
              ),
            ],
          ),
        );
      },
    );
  }
}

class StoryListViewWidget extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
   return Container(
     height: 100, // Set the desired height for the story list
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: stories.length,
       itemBuilder: (BuildContext context, int index) {
         return Container(
           width: 80, // Set the desired width for each story item
           margin: EdgeInsets.symmetric(horizontal: 8),
           child: Column(
             children: [
               Container(
                 width: 60, // Set the desired width for the story image
                 height: 60, // Set the desired height for the story image
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage(
                       stories[index].profileImage,
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 8),
               Text(
                 stories[index].username,
                 style: TextStyle(fontSize: 12),
               ),
             ],
           ),
         );
       },
     ),
   );
  }
}


