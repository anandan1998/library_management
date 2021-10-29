import 'package:flutter/material.dart';
import 'package:library_management/Screens/Home/Components/side_bar.dart';
import 'package:library_management/Screens/Home/Components/top_bar.dart';
import 'package:library_management/Screens/Book/search_book.dart';
import 'package:library_management/Screens/Book/statusbook.dart';
import 'package:library_management/Screens/Book/add_book_popup.dart';
import 'package:library_management/Screens/Book/book_model.dart';

class Book extends StatefulWidget {

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      // appBar: AppBar(

      //   title: Text('Flutter Sidebar')
      // ),
      //   drawer: SideLayout(),
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: Row(children: [
        SideLayout(),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TopLayout(),
          SizedBox(
            height: 10.0,
          ),
          Row(children: [
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: Text(
                  "Book",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: "Roboto",
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 5),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          Addbook(),);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      Text("Add book"),
                    ],
                  ),
                ))
          ]),


          Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              height: (height * .75) - 10,
              width: ((width) * .75) - 25,

              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),

                      child: Searchbook()
                  ),
                  Container(
                      height: (height * .5) - 10,
                      width: ((width) * .75) - 25,
                      margin: EdgeInsets.fromLTRB(8, 0, 20, 8),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,


                          child:
                          DataTable(

                            columns: [

                              DataColumn(label: Text("ID")),
                              DataColumn(label: Text("Title")),
                              DataColumn(label: Text("Auther")),
                              DataColumn(label: Text("Quantity")),
                              DataColumn(label: Text("Status"))
                            ], rows: [
                            DataRow(cells: [
                              DataCell(Text("1")),
                              DataCell(Text("2 states")),
                              DataCell(Text("Chethan Bhagath")),
                              DataCell(Text("100")),
                              DataCell(Statusbook()),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("1")),
                              DataCell(Text("2 states")),
                              DataCell(Text("Chethan Bhagath")),
                              DataCell(Text("100")),
                              DataCell(Statusbook()),
                            ]),

                          ],
                          )
                      )

                  )
                ],
              )

          )
        ])
      ]),
    );
  }




}