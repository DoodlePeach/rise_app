import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String mediaUrl;
  final String mediaName;
 final double mediaUrlScale; 
  SocialMediaButton({this.mediaUrlScale,this.mediaUrl, this.mediaName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.pinkAccent,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.network(
            mediaUrl,
            scale: mediaUrlScale,
          ),
          Text(
            mediaName,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
