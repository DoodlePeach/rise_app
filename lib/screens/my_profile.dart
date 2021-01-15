import 'package:flutter/material.dart';
import 'package:rise_app/widget/single_post_item.dart';
import 'package:rise_app/widget/star_rating.dart';
import 'package:rise_app/widget/user_detail_widget.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  double re = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/riseapp.png'),
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
            UserDetailWidget(
              value: true,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 20),
              child: Text(
                "My Posts",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SinglePostItem(
              imageUrl:
                  'https://i0.wp.com/techacute.com/wp-content/uploads/2020/06/Duarte-Presenting-with-Empathy-in-Virtual-Communication-Video-Webinar-Doug-Neff-Nicole-Lowenbraun-Happy-Man-Red-Shirt-Blue-Background.jpg?fit=1000%2C500&ssl=1&resize=350%2C200',
            ),
            SinglePostItem(
              imageUrl:
                  'https://i0.wp.com/techacute.com/wp-content/uploads/2020/06/Duarte-Presenting-with-Empathy-in-Virtual-Communication-Video-Webinar-Doug-Neff-Nicole-Lowenbraun-Happy-Man-Red-Shirt-Blue-Background.jpg?fit=1000%2C500&ssl=1&resize=350%2C200',
            ),
          ],
        ),
      ),
    );
  }
}
