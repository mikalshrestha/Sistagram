import 'package:flutter/material.dart';
import 'package:flutter_practice/presenter/design_old/main_home_page.dart';
import 'package:flutter_practice/presenter/sistagram/sistagram_intro.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SistagramIntroWidget(),
    );
  }
}


