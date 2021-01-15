import 'package:flutter/material.dart';
import 'package:rise_app/screens/bottom_navigation_bar.dart';
import 'package:rise_app/widget/cus_gradient.dart';
import 'package:rise_app/widget/single_post_item.dart';
import 'package:rise_app/widget/star_rating.dart';
import 'package:rise_app/widget/user_detail_widget.dart';

// ignore: must_be_immutable
class PublicProfilePage extends StatelessWidget {
  double re = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CusBottonNavigationBar(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/riseapp.png',
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.pink,
                ),
              ),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    radius: 0.5,
                    colors: <Color>[
                      Color(0xFF974c92),
                      Color(0xFFf999f4),
                    ],
                    tileMode: TileMode.repeated,
                  ).createShader(bounds);
                },
                child: Icon(
                  Icons.search,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    UserDetailWidget(
                      value: false,
                    ),
                  ],
                ),
              ],
            ),
            ListTile(
              leading: Text(
                "My Posts",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            SinglePostItem(
              imageUrl:
                  'https://i.pinimg.com/originals/67/b2/75/67b2753c8654901b542228e46e22593e.jpg',
            ),
            SinglePostItem(
              imageUrl:
                  'https://i.pinimg.com/originals/67/b2/75/67b2753c8654901b542228e46e22593e.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
