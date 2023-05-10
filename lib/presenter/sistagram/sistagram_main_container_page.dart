import 'package:flutter/material.dart';
import 'package:flutter_practice/presenter/sistagram/fragments_view/sistagram_home_container.dart';

import '../bottom_navigation/custom_animated_bottom_bar.dart';
import 'fragments_view/sistagram_friends_container.dart';
import 'fragments_view/sistagram_watch_container.dart';
import 'fragments_view/sistagram_profile_container.dart';

class SistagramMainWidget extends StatefulWidget {
  @override
  _SistagramMainState createState() => _SistagramMainState();
}

class _SistagramMainState extends State<SistagramMainWidget> {

  int _currentIndex = 0;
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: getBody() ,
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.video_collection),
          title: Text('Watch'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text(
            'Friends ',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      SistagramHomeContainerWidget(),
      SistagramWatchContainerWidget(),
      SistagramFindFriendsContainerWidget(),
      SistagramProfileWidgetContainer()
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }

}



