import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/trendi/main_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
        title: 'MY PROFILE',
        column: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.person),
                title: Text('Fatima Hamdan'),
                subtitle: Text('+97 50 1234 567'),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Color(0xFFff65c5),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDetailButton('', 'Wishlist', '11'),
                    buildVerticleDivider(),
                    buildDetailButton('order.svg', 'Total Orders', '25'),
                    buildVerticleDivider(),
                    buildDetailButton('orderremove.svg', 'Cancelled', '12'),
                  ],
                ),
              ),
              buildMenuTile('1.svg', 'Edit Profile'),
              buildMenuTile('2.svg', 'My Orders'),
              buildMenuTile('3.svg', 'Settings'),
              buildMenuTile('4.svg', 'Language'),
              buildMenuTile('5.svg', 'Logout'),
            ],
          ),
        ));
  }

  Widget buildMenuTile(icon, title) {
    return Container(
        margin: EdgeInsets.only(top: 12),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Color(0xFFff65c5).withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/' + icon,
                color: Color(0xFFff65c5),
              )),
          title: Text(title),
          trailing: title.toString().contains('Language')
              ? SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                )
              : Icon(Icons.keyboard_arrow_right),
        ));
  }

  VerticalDivider buildVerticleDivider() {
    return VerticalDivider(
      width: 8,
      indent: 20,
      endIndent: 20,
      color: Colors.white,
    );
  }

  buildDetailButton(String r, String s, String t) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        r.isEmpty
            ? Icon(
                Icons.favorite,
                color: Colors.white,
              )
            : SvgPicture.asset(
                'assets/' + r,
                color: Colors.white,
              ),
        Text(s,
            style: const TextStyle(
              color: Colors.white,
            )),
        Text(
          t,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        )
      ],
    );
  }
}
