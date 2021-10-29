import 'package:flutter/material.dart';

// class Searchbook extends StatelessWidget {
class Searchbook extends StatefulWidget {

  @override
  _SearchbookState createState() => _SearchbookState();
}

class _SearchbookState extends State<Searchbook> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      width: 250,


      decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.all(30.0),
      padding: EdgeInsets.fromLTRB(10, 10, 20, 5),
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 40,
                  width: 150,
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
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                height: 40,
                  width: 80,
                  padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {},
                    child:

                        Text("Book"),

                  )),
              Container(
                  height: 40,
                  width: 90,

                  padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {},
                    child:
                        Text("Auther"),
                  ))


            ],
          )

        ],
      ),
    );
  }
}
