import 'package:flutter/material.dart';
import 'package:ui/trendi/categories_page.dart';
import 'package:ui/trendi/main_page.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
        title: "WISHLIST",
        column: Column(children: [
          SearchFieldWidget(),
          GridView.count(
            semanticChildCount: 4,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            children: [
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
              buildCard("Floral Print Ruffle Trim Wrap..."),
            ],
          ),
          //buildCard("Floral Print Ruffle Trim Wrap..."),
        ]));
  }

  buildCard(String s) {
    return Card(
      child: Container(
        height: 300,
        width: 180,
        child: Column(
          children: [
            Container(
              height: 265,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/masks/Mask.png'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 8, right: 8),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.favorite_outlined,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    s,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Row(
                    children: const [
                      Text(
                        'IQD 365.00 ',
                        style: TextStyle(fontSize: 13, color: Colors.red),
                      ),
                      Text(
                        'IQD 365.00 ',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF7D8AA),
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          height: 20,
                          width: 20,
                        ),
                        Positioned(
                          left: 14,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFB5E3E5),
                                borderRadius:
                                    BorderRadiusDirectional.circular(20)),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Positioned(
                          left: 28,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 30,
                                  color: Colors.red,
                                ),
                                color: Color(0xFFF2BABF),
                                borderRadius:
                                    BorderRadiusDirectional.circular(20)),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Positioned(
                          child: Text(
                            'More Colors',
                            style: TextStyle(color: Colors.black54),
                          ),
                          top: 1,
                          left: 55,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      buildSize('S'),
                      buildSize('M'),
                      buildSize('L'),
                      buildSize('XL'),
                      buildSize('2XL'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildSize(String s) {
    return Container(
      margin: const EdgeInsets.only(top: 4, left: 4),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(width: .1, color: Colors.grey),
      ),
      child: Text(s),
    );
  }

  buildCard2(String s) {
    return Container(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image(
                  image: AssetImage('assets/masks/Mask.png'),
                  fit: BoxFit.contain,
                  height: 300,
                ),
                // AssetImage(
                //   'assets/masks/Mask.png',
                //   height: 400,
                // ),
                // Positioned(
                //   right: 14,
                //   top: 14,
                //   child: Container(
                //     width: 40,
                //     height: 40,
                //     decoration: const BoxDecoration(
                //         color: Colors.white, shape: BoxShape.circle),
                //     child: const Icon(
                //       Icons.favorite_outlined,
                //       color: Colors.red,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Text(
            s,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(
            'IQD 365.00 ',
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
