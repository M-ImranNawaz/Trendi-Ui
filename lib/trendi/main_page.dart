import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title, required this.column})
      : super(key: key);
  final String title;
  final Widget column;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          backgroundColor: Color(0xEEF9F9F9),
          toolbarHeight: 80,
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('assets/cart.svg')),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/bell.svg'),
            )
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          sliver: SliverToBoxAdapter(child: widget.column),
        ),
      ],
    );
  }
}
