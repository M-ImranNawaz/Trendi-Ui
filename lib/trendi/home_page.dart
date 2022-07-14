import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/trendi/main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: 'TRENDI',
      column: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTopButton(null, 'Cash on Delivery'),
              buildTopButton(FontAwesomeIcons.truck, "Delivery in 3 Days"),
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: .95,
              autoPlay: true,
              pauseAutoPlayOnTouch: true,
            ),
            items: [1].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset('assets/Image.png'),
                  );
                },
              );
            }).toList(),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.only(left: 180),
                    icon: SvgPicture.asset(
                      'assets/seachicon.svg',
                      width: 45,
                    ),
                    hintText: 'Search here...  '),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildTopButton(data, String t) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: 160,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black45, width: .3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          data == null
              ? const Image(
                  image: AssetImage('assets/text.png'),
                  width: 30,
                )
              : Icon(
                  data,
                  color: Color(0xFFff65c5),
                ),
          Text(t)
        ],
      ),
    );
  }
}
