import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

// ignore: must_be_immutable
class StarRating extends StatelessWidget {
  double rating = 3.0;
  double size;
  StarRating({this.rating, @required this.size});
  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      rating: rating,
      isReadOnly: false,
      size: size,
      filledIconData: Icons.star,
      borderColor: Colors.grey,
      halfFilledIconData: Icons.star_half,
      defaultIconData: Icons.star_border,
      starCount: 5,
      allowHalfRating: true,
      color: Colors.yellow,
      spacing: 2.0,
      onRated: (value) {},
    );
  }
}
