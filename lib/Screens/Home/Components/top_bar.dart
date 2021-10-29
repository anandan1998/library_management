import 'package:flutter/material.dart';

class TopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: (height) * .1,
      width: width - 258,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: width - 258 - 200,
          ),
          Text(
            "Hey, Ananthu",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "Roboto"),
          ),
          // Icon(Icons.library_books,color: Colors.white,),
        ],
      ),
    );
  }
}
