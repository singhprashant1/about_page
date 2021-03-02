import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int _currentIndex = 0;
  List cardList = [Item1(), Item2(), Item3(), Item4(), Item5()];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              // height: SizeConfig.blockSizeVertical * 28,
              height: 320,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              scrollDirection: Axis.horizontal,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.80,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20.0),
      //   image: DecorationImage(
      //     image: AssetImage('ASSETS/slider1.png'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'ASSETS/slider1.png',
              width: 300.0,
              height: 240.0,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "The Vision",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Srila Prabhupäda envisions for New\nVrindavan in India in the form of Govardhan Ecovillage in Mumbai.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20.0),
      //   image: DecorationImage(
      //     image: AssetImage('ASSETS/slider2.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'ASSETS/slider2.jpg',
              width: 300.0,
              height: 240.0,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "The Vision",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Srila Prabhupäda envisions for New\nVrindavan in India in the form of Govardhan Ecovillage in Mumbai.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   image: DecorationImage(
      //     image: AssetImage('ASSETS/slider3.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'ASSETS/slider3.jpg',
              width: 300.0,
              height: 240.0,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "The Vision",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Srila Prabhupäda envisions for New\nVrindavan in India in the form of Govardhan Ecovillage in Mumbai.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   image: DecorationImage(
      //     image: AssetImage('ASSETS/slider4.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'ASSETS/slider4.jpg',
              width: 300.0,
              height: 240.0,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "The Vision",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Srila Prabhupäda envisions for New\nVrindavan in India in the form of Govardhan Ecovillage in Mumbai.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   image: DecorationImage(
      //     image: AssetImage('ASSETS/slider5.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'ASSETS/slider5.jpg',
              width: 300.0,
              height: 240.0,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "The Vision",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Srila Prabhupäda envisions for New\nVrindavan in India in the form of Govardhan Ecovillage in Mumbai.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
