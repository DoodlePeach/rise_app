import 'package:flutter/material.dart';
import 'package:rise_app/widget/rating_item.dart';

class ComparisonScore extends StatelessWidget {
  Widget _vs() {
    return Container(
      height: 50,
      alignment: Alignment.bottomCenter,
      child: Text(
        'Vs',
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Comparison Score',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
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
                Icons.arrow_back_ios,
                size: 16,
                color: Colors.pink,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'A',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'B',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'C',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'D',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'E',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'F',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: true,
                      alphabet: 'G',
                      count: 4.5,
                    ),
                  ),
                  _vs(),
                  Expanded(
                    child: RatingItem(
                      rating: 1.1,
                      secRating: 1.2,
                      trueFalse: false,
                      alphabet: '',
                      count: 4.5,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
