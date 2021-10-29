import 'package:flutter/material.dart';


class Returnbook extends StatefulWidget {

  @override
  _ReturnbookState createState() => _ReturnbookState();
}

class _ReturnbookState extends State<Returnbook> {
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
                  DataCell(Text("Member",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "Roboto"))),
                  DataCell(Text("Vinod")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Transaction ID",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "Roboto"))),
                  DataCell(Text("234567")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Total Fee",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "Roboto"))),
                  DataCell(Text("234")),
                ])
              ])),


      ]),
      actions: <Widget>[
        new
        RaisedButton(
          color: Colors.red,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child:
          Text("Return",style: TextStyle(color: Colors.white)),
        ),

      ],
    );
  }}
