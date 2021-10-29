import 'package:flutter/material.dart';
import 'package:library_management/Screens/Transactions/return_book.dart';
class Returntrans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        child:
            Container(
                child:
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                    Returnbook());
                  },
                  child:
                  Text("Return",style: TextStyle(color: Colors.white)),
                )
            )

    );
  }
}