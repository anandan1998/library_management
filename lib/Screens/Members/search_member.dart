import 'package:flutter/material.dart';

class Searchmember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: 250,


      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.all(30.0),
      padding: EdgeInsets.fromLTRB(10, 10, 20, 5),
      alignment: Alignment.topLeft,
      child:
          Row(
            children: [
              Container(
                  height: 35,
                  width: 150,
                  padding: EdgeInsets.fromLTRB(10, 10, 20, 8),
                  child: TextField(

                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Search Member'))),
              Spacer(),
              Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.fromLTRB(0, 10, 10, 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  )),
            ],
          ),



    );
  }
}
