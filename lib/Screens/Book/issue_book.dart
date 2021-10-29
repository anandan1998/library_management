import 'package:flutter/material.dart';


class Issuebook extends StatefulWidget {

  @override
  _IssuebookState createState() => _IssuebookState();
}

class _IssuebookState extends State<Issuebook> {
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: const Text('Return book'),
      content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            Container(

                child: DataTable(

                    columns: [

                      DataColumn(label: Text(" ")),
                      DataColumn(label: Text(" ")),

                    ], rows: [
                  DataRow(cells: [
                    DataCell(Text("Book",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "Roboto"))),
                    DataCell(Text("2 States")),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text("Member",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "Roboto")),
                    )),
                    DataCell(Container(
                      width: 300,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder()
                        ),
                      ),
                    )),
                  ])
                ])),


          ]),
      actions: <Widget>[
        new
        RaisedButton(
          color: Colors.green,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child:
          Text("Issue",style: TextStyle(color: Colors.white)),
        ),

      ],
    );
  }}
