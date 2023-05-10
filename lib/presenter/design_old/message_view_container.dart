import 'package:flutter/material.dart';
import 'package:flutter_practice/presenter/sistagram/sistagram_intro.dart';

class MessageContainerWidget extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessageContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:   SafeArea(
        child: Center(
          child:   ElevatedButton(
            child: Text('Show Sistagram'),
            onPressed: () {
              // Handle button press
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return SistagramIntroWidget();
              }));
            },
          ),
        ),
      ),
    );
  }

}