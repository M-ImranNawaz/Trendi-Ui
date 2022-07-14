import 'package:flutter/material.dart';
import 'package:ui/trendi/main_page.dart';
import 'package:ui/trendi/profile_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<String> categories = [
    'newarrival.png',
    'clearancesale.png',
    'clothing.png',
    'christmas.png',
    'mollymae.png',
    'mollymae.png',
    'mollymae.png',
    'mollymae.png',
    'pinkfriday.png',
    'mollymae.png',
    'mollymae.png',
    'mollymae.png',
    'mollymae.png',
    'pinkfriday.png'
  ];
  List<String> catName = [
    'NEW ARRIVAL',
    'CLEARANCE SALE',
    'CLOTHING',
    'CHRISTMAS',
    'MOLLY MAE',
    'MOLLY MAE',
    'MOLLY MAE',
    'MOLLY MAE',
    'PINK FRIDAY',
    'MOLLY MAE',
    'MOLLY MAE',
    'MOLLY MAE',
    'MOLLY MAE',
    'PINK FRIDAY'
  ];
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: 'CATEGORIES',
      column: Column(
        children: [
          SearchFieldWidget(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 10),
                  leading: Image.asset(
                      'assets/masks/' + categories[index].toString()),
                  title: Text(catName[index].toString()),
                  subtitle: Text('75 Products'),
                ),
              );
            },
            itemCount: categories.length,
          ),
        ],
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search here...',
        ),
      ),
    );
  }
}
