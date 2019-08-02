import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/slide/slide1.jpg',
  'assets/images/slide/slide2.jpg',
  'assets/images/slide/slide3.jpg',
  'assets/images/slide/slide4.jpg',
];

class TutorialFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: ListView(
        children: <Widget>[

          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Column(children: [
                slide,
              ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0),
              child: Column(children: [
               /* new Text("WELLCOME"),*/
                content,
              ])),
        ],
      ),
    );
  }

  Widget slide = CarouselSlider(
    autoPlay: true,
    height: 200.0,
    items: imgList.map((url) {
      return Container(
        margin: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.asset(
            url,
            fit: BoxFit.cover,
            width: 1000.0,
          ),
        ),
      );
    },).toList(),
  );

  Widget content = Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/images/logoCowell.jpg'),
          )
        ],
      ),
    ],
  );

}

