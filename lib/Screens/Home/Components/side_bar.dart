import 'package:flutter/material.dart';
import 'package:library_management/Screens/Home/home_screen.dart';

import 'package:library_management/Screens/Book/book.dart';
import 'package:library_management/Screens/Members/members.dart';
import 'package:library_management/Screens/Transactions/transaction.dart';

class SideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: (height) * .1,
          width: 258,
          color: Colors.white,
        ),
        // Positioned(
        // top: (height) * .2,
        // child:
        Container(
            height: (height) * .9,
            width: 258,
            color: Color.fromRGBO(120, 122, 145, 1),
            child: Column(children: [
              Container(
                  height: (height) * .1,
                  width: 258,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Row(children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        )
                      ]))),
              Container(
                  height: (height) * .1,
                  width: 258,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Book(),
                          ),
                        );
                      },
                      child: Row(children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          Icons.library_books,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Book',
                          style: TextStyle(color: Colors.white),
                        )
                      ]))),
              Container(
                  height: (height) * .1,
                  width: 258,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Member(),
                          ),
                        );
                      },
                      child: Row(children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          Icons.people_outline,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Members',
                          style: TextStyle(color: Colors.white),
                        )
                      ]))),
              Container(
                  height: (height) * .1,
                  width: 258,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Transactions(),
                          ),
                        );
                      },
                      child: Row(children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          Icons.import_export,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Transactions',
                          style: TextStyle(color: Colors.white),
                        )
                      ])))
            ]))
      ],
    );
  }
}
