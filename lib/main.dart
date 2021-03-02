import 'package:about_page/aboutpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final PageController ctrl = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: AboutPage(),
      // home: Scaffold(
      //   body: PageView(
      //     scrollDirection: Axis.vertical,
      //     controller: ctrl,

      //     children: [
      //       Container(color: Colors.green),
      //       Container(color: Colors.grey),
      //       Container(color: Colors.blue),
      //       Container(color: Colors.yellow),
      //     ],
      //   ),
      // ),
    );
  }
}
