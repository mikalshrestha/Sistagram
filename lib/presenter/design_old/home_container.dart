import 'package:flutter/material.dart';

class HomeContainerWidget extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  child: Card(
                    margin: EdgeInsets.all(16),
                    child: Container(
                      margin: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/image1.png',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Product Title",
                              maxLines: 1,

                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Product Title",
                              maxLines: 1,

                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Product Title",
                              maxLines: 1,

                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Product Title",
                              maxLines: 1,

                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Product Title",
                              maxLines: 1,

                            ),
                          ),
                          Text("Product Description Product Description sdogbwgognskvnsbvpnsbvpsnvpsovnsfsnvspvnspogjeopfwfe"),
                        ],
                      ),
                    )
                  ),
                )

      ),
    );
  }

}
