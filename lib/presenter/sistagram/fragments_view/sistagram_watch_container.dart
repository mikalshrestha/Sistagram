import 'package:flutter/material.dart';
import 'package:flutter_practice/presenter/sistagram/sistagram_intro.dart';

import '../../../domain/models/video_model.dart';

class SistagramWatchContainerWidget extends StatefulWidget {
  @override
  _SistagramWatchPageState createState() => _SistagramWatchPageState();
}

class _SistagramWatchPageState extends State<SistagramWatchContainerWidget> {

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
                    "Watch",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Padding(padding: EdgeInsets.all(16)),
                  Expanded(
                    child: VideoList(),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}

class VideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoPosts.length,
      itemBuilder: (context, index) {
        final post = videoPosts[index];
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(post.thumbnailUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12.0,
                    right: 12.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        post.duration,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(
                post.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                post.username,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      // Handle like button press
                    },
                  ),
                  SizedBox(width: 4.0),
                  Text(post.likes.toString()),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      // Handle comment button press
                    },
                  ),
                  SizedBox(width: 4.0),
                  Text(post.comments.toString()),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // Handle share button press
                    },
                  ),
                  SizedBox(width: 4.0),
                  Text(post.shares.toString()),
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