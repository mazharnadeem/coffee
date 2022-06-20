import 'package:flutter/material.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;
  final Color borderColor;
  final double size;

  StarRating(
      {this.starCount = 5,
      this.rating = .0,
      required this.onRatingChanged,
      required this.color,
      required this.borderColor,
      required this.size});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    double ratingStarSizeRelativeToScreen =
        MediaQuery.of(context).size.width / starCount;

    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: borderColor,
        size: size,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color,
        size: size,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color,
        size: size,
      );
    }
    return new InkResponse(
      highlightColor: Colors.transparent,
      radius: (size) / 2,
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: new Container(
        height: (size) * 1.5,
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: new List.generate(
            starCount,
            (index) => buildStar(context, index),
          ),
        ),
      ),
    );
  }
}
