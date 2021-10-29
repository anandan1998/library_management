import 'package:flutter/material.dart';

class SearchbarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 60,
      width: 550,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(30.0),
      padding: EdgeInsets.fromLTRB(10, 10, 20, 0),
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 40,
                  width: 450,
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Search Book'))),
              Spacer(),
              Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
