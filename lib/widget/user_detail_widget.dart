import 'package:flutter/material.dart';
import 'package:rise_app/screens/public_profile_page.dart';
import 'package:rise_app/widget/star_rating.dart';

import 'cus_gradient.dart';

class UserDetailWidget extends StatelessWidget {
  bool value = false;
  UserDetailWidget({this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: value == true ? 230 : 300,
      width: double.infinity,
      color: Colors.white,
      child: value == true
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => PublicProfilePage(),
                            //   ),
                            // );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://img.mensxp.com/media/content/2019/Nov/the-wikipedia-page-of-man-has-a-mallu-guys-picture-1200x900-1573045137_1200x900.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 10, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jonathan Hewitt",
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
                                "Age 23, Paris",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  StarRating(
                                    size: 27,
                                    rating: 3.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PublicProfilePage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://img.mensxp.com/media/content/2019/Nov/the-wikipedia-page-of-man-has-a-mallu-guys-picture-1200x900-1573045137_1200x900.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 10, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jonathan Hewitt",
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
                                "Age 23, Paris",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  StarRating(
                                    size: 27,
                                    rating: 3.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Family/Friend",
                        style: TextStyle(color: Colors.grey, fontSize: 19),
                      ),
                      Text(
                        "Others",
                        style: TextStyle(color: Colors.grey, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: gradient,
                            borderRadius: BorderRadius.circular(20)),
                        height: 60,
                        alignment: Alignment.center,
                        child: StarRating(
                          size: 25,
                          rating: 3.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: gradient,
                            borderRadius: BorderRadius.circular(20)),
                        height: 60,
                        alignment: Alignment.center,
                        child: StarRating(
                          size: 25,
                          rating: 3.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
