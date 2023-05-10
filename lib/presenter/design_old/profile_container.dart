import 'package:flutter/material.dart';

class ProfileWidgetContainer extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfileWidgetContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Card(
          margin: EdgeInsets.all(16),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child:  ListView(

            children: <Widget>[

              Container(

                height: 250,

                decoration: BoxDecoration(

                  gradient: LinearGradient(

                    colors: [Colors.red, Colors.blueAccent.shade100],

                    begin: Alignment.centerLeft,

                    end: Alignment.centerRight,

                    stops: [0.5, 0.9],

                  ),

                ),
                margin: EdgeInsets.all(16),

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[

                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: <Widget>[

                        CircleAvatar(

                          backgroundColor: Colors.white70,

                          minRadius: 60.0,

                          child: CircleAvatar(

                            radius: 50.0,

                            backgroundImage:

                            AssetImage('assets/images/image1.png'),

                          ),

                        ),

                      ],

                    ),

                    SizedBox(

                      height: 10,

                    ),

                    Text(

                      'Mikal Shrestha',

                      style: TextStyle(

                        fontSize: 35,

                        fontWeight: FontWeight.bold,

                        color: Colors.white,

                      ),

                    ),

                    Text(

                      'Software Engineer',

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 25,

                      ),

                    ),

                  ],

                ),

              ),

              Container(
                margin: EdgeInsets.all(16),

                child: Row(

                  children: <Widget>[

                    Expanded(

                      child: Container(

                        color: Colors.blueAccent.shade100,

                        child: ListTile(

                          title: Text(

                            '5000',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              fontSize: 30,

                              color: Colors.white,

                            ),

                          ),

                          subtitle: Text(

                            'Followers',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontSize: 20,

                              color: Colors.white70,

                            ),

                          ),

                        ),

                      ),

                    ),

                    Expanded(

                      child: Container(

                        color: Colors.red,

                        child: ListTile(

                          title: Text(

                            '5000',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              fontSize: 30,

                              color: Colors.white,

                            ),

                          ),

                          subtitle: Text(

                            'Following',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontSize: 20,

                              color: Colors.white70,

                            ),

                          ),

                        ),

                      ),

                    ),

                  ],

                ),

              ),

              Container(

                child: Column(

                  children: <Widget>[

                    ListTile(

                      title: Text(

                        'Email',

                        style: TextStyle(

                          color: Colors.deepOrange,

                          fontSize: 20,

                          fontWeight: FontWeight.bold,

                        ),

                      ),

                      subtitle: Text(

                        'mikal.shrestha@gmail.com',

                        style: TextStyle(

                            fontSize: 18

                        ),

                      ),

                    ),

                    Divider(),

                    ListTile(

                      title: Text(

                        'GitHub',

                        style: TextStyle(

                          color: Colors.deepOrange,

                          fontSize: 20,

                          fontWeight: FontWeight.bold,

                        ),

                      ),

                      subtitle: Text(

                        'https://github.com/',

                        style: TextStyle(

                            fontSize: 18

                        ),

                      ),

                    ),

                    Divider(),

                    ListTile(

                      title: Text(

                        'Linkedin',

                        style: TextStyle(

                          color: Colors.deepOrange,

                          fontSize: 20,

                          fontWeight: FontWeight.bold,

                        ),

                      ),

                      subtitle: Text(

                        'www.linkedin.com/',

                        style: TextStyle(

                            fontSize: 18

                        ),

                      ),

                    ),

                    Divider(),

                    ListTile(

                      title: Text(

                        'Facebook',

                        style: TextStyle(

                          color: Colors.deepOrange,

                          fontSize: 20,

                          fontWeight: FontWeight.bold,

                        ),

                      ),

                      subtitle: Text(

                        'www.facebook.com/',

                        style: TextStyle(

                            fontSize: 18

                        ),

                      ),

                    ),

                  ],

                ),

              )

            ],

          ),
        )

      );

  }

}
