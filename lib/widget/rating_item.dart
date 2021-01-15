import 'package:flutter/material.dart';
import 'star_rating.dart';
// ignore: must_be_immutable
class RatingItem extends StatelessWidget {
  final String alphabet;
  final double count;
  final bool trueFalse;
  double rating = 3.0;
  double secRating = 3.0;
  RatingItem(
      {this.rating,
      this.secRating,
      this.alphabet,
      this.count,
      this.trueFalse});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Text(
              alphabet,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          trueFalse == true
              ? Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      StarRating(
                        size: 20,
                        rating: rating,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        count.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              : Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        count.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      StarRating(
                        size: 20,
                        rating: secRating,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
