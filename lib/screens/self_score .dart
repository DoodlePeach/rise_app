import 'package:flutter/material.dart';
import 'package:rise_app/screens/login_page.dart';
import 'package:rise_app/widget/cus_button.dart';
import 'package:rise_app/widget/rating_item.dart';

class SelfScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/riseapp.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'How do you see yourself?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Assign scores to these categories',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                RatingItem(
                  rating: 1.2,
                  secRating: 1.2,
                  alphabet: 'A',
                  count: 3.4,
                  trueFalse: true,
                ),
                RatingItem(
                  rating: 1.2,
                  secRating: 1.2,
                  alphabet: 'B',
                  count: 1.3,
                  trueFalse: true,
                ),
                RatingItem(
                  rating: 1.2,
                  secRating: 1.2,
                  alphabet: 'C',
                  count: 3.1,
                  trueFalse: true,
                ),
                RatingItem(
                  rating: 1.2,
                  secRating: 1.2,
                  alphabet: 'D',
                  count: 1.4,
                  trueFalse: true,
                ),
                CusButton(
                  height: 70,
                  widgth: 300,
                  textButton: 'finish',
                  whenPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
