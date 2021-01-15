import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rise_app/widget/single_post_item.dart';
import 'package:rise_app/widget/star_rating.dart';
import './public_profile_page.dart';
import '../widget/cus_gradient.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double re = 3.0;
  double rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/riseapp.png',
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
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      height: 400,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpQWpBYDTlCTplYhMNMXjuXQwjZ-X7YcD9-A&usqp=CAU',
                                  scale: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello, Jonathan",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "What are you upto Today?",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: TextFormField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                        hintText: "Type Something...",
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        contentPadding:
                                            EdgeInsets.only(top: 40, left: 20)),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      elevation: 0,
                                      color: Colors.white,
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add_photo_alternate,
                                            color: Colors.grey[400],
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "Add Photo",
                                            style: TextStyle(
                                                color: Colors.grey[400]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Color(
                        0xfff7f8f9,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 63,
                  width: 250,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => PublicProfilePage(),
                            maintainState: false),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        80.0,
                      ),
                    ),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: gradient,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.keyboard_capslock,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "Upload",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Text(
                "Recent Posts",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
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
            ListTile(
              leading: Text(
                "News Posts",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
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
            ListTile(
              title: Container(
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Rating",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        StarRating(
                          size: 30,
                          rating: rating,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Their Rating",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        StarRating(
                          size: 30,
                          rating: rating,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
