import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> rsearch = [
    'Dresses',
    'Tops',
    'Floral Print Ruffle Trim Wrap',
    'Bottoms'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFff65c5),
      // appBar: PreferredSize(
      //   child: Container(
      //     child: Row(children: [
      //       Expanded(child: TextField()),
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(FontAwesomeIcons.sort),
      //       )
      //     ]),
      //   ),
      //   preferredSize: Size.fromHeight(100),
      // ),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   shadowColor: Colors.transparent,
      //   title: Expanded(
      //       child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10), color: Colors.white),
      //     child: TextField(
      //       decoration: InputDecoration(
      //         prefixIcon: Icon(Icons.search),
      //         border: InputBorder.none,
      //         fillColor: Color(0xFFff65c5),
      //         focusColor: Color(0xFFff65c5),
      //         hoverColor: Color(0xFFff65c5),
      //       ),
      //     ),
      //   )),
      //   actions: [
      //     IconButton(
      //       icon: SvgPicture.asset('assets/sort.svg'),
      //       onPressed: () {},
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusColor: Color(0xFFff65c5),
                          hintText: 'Search here...',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: MaterialButton(
                            minWidth: 0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            child: Icon(Icons.highlight_remove_sharp),
                            onPressed: () {},
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    child: SvgPicture.asset('assets/sort.svg'),
                    onPressed: () {},
                  ),
                  // TextButton.icon(
                  //     style: TextButton.styleFrom(
                  //         minimumSize: Size.zero, padding: EdgeInsets.zero),
                  //     onPressed: () {},
                  //     icon: SvgPicture.asset('assets/sort.svg'),
                  //     label: Text(''))
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 12, right: 12, top: 14),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'RECENT SEARCHES',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: ListView.builder(
                          itemCount: rsearch.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200,
                                          width: 1))),
                              child: ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                leading: Icon(
                                  FontAwesomeIcons.clock,
                                  size: 20,
                                ),
                                horizontalTitleGap: 0,
                                title: Text(rsearch[index]),
                                trailing: IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: () {},
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
