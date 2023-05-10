import 'package:flutter/material.dart';
import 'package:flutter_practice/presenter/sistagram/sistagram_main_container_page.dart';

import '../design_old/main_home_page.dart';

class SistagramIntroWidget extends StatefulWidget {
  @override
  _SistagramIntroState createState() => _SistagramIntroState();
}

class _SistagramIntroState extends State<SistagramIntroWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:   SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
                padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sistagram",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Padding(padding: EdgeInsets.all(16)),
                  Image.asset(
                    'assets/images/sistagram_intro_img.png',
                    height: 400,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Join the conversation and connect",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Text(
                    "Become part of a community of indivisuals who are engaged in conversations and connections",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                  SizedBox(height: 42),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('Get Started', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16), // <-- Radius
                        ),
                      ),
                      onPressed: () {
                        // Handle button press
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return SistagramMainWidget();
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}