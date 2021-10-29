import 'package:flutter/material.dart';
import 'package:library_management/Screens/Book/book_details.dart';
import 'package:library_management/Screens/Book/issue_book.dart';
class Statusbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child:
      Row(
        children: [
          Container(
              child:
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        Detailbook(),);
                },
                child:
                    Text("Details"),
              )
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              child:
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          Issuebook());
                },
                child:
                Text("Issue",style: TextStyle(color: Colors.white)),
              )
          )
        ],
      )
    );
        }
        }