import 'package:flutter/material.dart';

class UsersContainerWidget extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

        body:  ListView(

          children: <Widget>[

            Card(
                margin: EdgeInsets.all(12),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),

              child: Container(
                margin: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[

                            Text(
                              'Principal Amount',
                              textAlign: TextAlign.left,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),
                            Spacer(),
                            Text(
                              'NPR 10000',
                              textAlign: TextAlign.end,

                              style: TextStyle(

                                fontSize: 14,

                                fontWeight: FontWeight.bold,

                                color: Colors.black,

                              ),

                            ),

                          ],

                        ),
                      ),


                    ],

                  ),
                ),

            ),
            Card(
              margin: EdgeInsets.all(12),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),

              child: Container(
                margin: EdgeInsets.all(16),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    Expanded(

                      child: Container(

                        child: ListTile(

                          title: Text(

                            'Principal Amount',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              fontSize: 22,

                              color: Colors.black,

                            ),

                          ),

                          subtitle: Text(

                            'NPR 10000',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontSize: 18,

                              color: Colors.black,

                            ),

                          ),

                        ),

                      ),

                    ),
                    VerticalDivider(color: Colors.black, thickness: 6,),
                    Expanded(

                      child: Container(

                        child: ListTile(

                          title: Text(

                            'Principal Amount',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              fontSize: 22,

                              color: Colors.black,

                            ),

                          ),

                          subtitle: Text(

                            'NPR 10000',

                            textAlign: TextAlign.center,

                            style: TextStyle(

                              fontSize: 18,

                              color: Colors.black,

                            ),

                          ),

                        ),

                      ),

                    ),

                  ],

                ),

              ),

            ),
            Card(
              margin: EdgeInsets.all(12),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),

              child: Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),
                    Divider(color: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),
                    Divider(color: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),
                    Divider(color: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),
                    Divider(color: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),
                    Divider(color: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),
                    Divider(color: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Principal Amount',
                            textAlign: TextAlign.left,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),
                          Spacer(),
                          Text(
                            'NPR 10000',
                            textAlign: TextAlign.end,

                            style: TextStyle(

                              fontSize: 14,

                              fontWeight: FontWeight.bold,

                              color: Colors.black,

                            ),

                          ),

                        ],

                      ),
                    ),

                  ],

                ),
              ),

            ),

          ],

        ),

    );
  }

}