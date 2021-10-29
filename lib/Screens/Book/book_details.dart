import 'package:flutter/material.dart';


class Detailbook extends StatefulWidget {

  @override
  _DetailbookState createState() => _DetailbookState();
}

class _DetailbookState extends State<Detailbook> {
  @override

Widget build(BuildContext context) {
  return AlertDialog(
    title: const Text('Book Details'),
    content: new Row(
      children: [

        Container(
          child: DataTable(

            columns: [

              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),

            ], rows: [
            DataRow(cells: [
              DataCell(Text("ID",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "Roboto"))),
              DataCell(Text("1")),

            ]),
            DataRow(cells: [
              DataCell(Text("Title",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "Roboto"))),
              DataCell(Text("2 states")),
            ]),
    DataRow(cells: [
    DataCell(Text("Auther",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: "Roboto"))),
    DataCell(Text("Chethan")),
    ]),
    DataRow(cells: [
    DataCell(Text("Average Rating",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: "Roboto"))),
    DataCell(Text("4/5")),
    ]),
    DataRow(cells: [
    DataCell(Text("Rating Count",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: "Roboto"))),
    DataCell(Text("3320")),
    ]),
    DataRow(cells: [
    DataCell(Text("Publisher",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: "Roboto"))),
    DataCell(Text("DC Books")),
    ]),
    DataRow(cells: [
    DataCell(Text("Publication Date",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: "Roboto"))),
    DataCell(Text("20/3/2021")),
    ]),

          ],
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          child: DataTable(

            columns: [

              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),

            ], rows: [
            DataRow(cells: [
              DataCell(Text("Number of pages",style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Roboto"))),
              DataCell(Text("134")),

            ]),
            DataRow(cells: [
              DataCell(Text("Base fee",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "Roboto"))),
              DataCell(Text("300"),
              showEditIcon: true,
              ),
            ]),
            DataRow(cells: [
              DataCell(Text("Total instance",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "Roboto"))),
              DataCell(Text("102"),
                showEditIcon: true,),
            ]),
            DataRow(cells: [
              DataCell(Text("Available instance",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("85"),
                showEditIcon: true,
              ),
            ]),
            DataRow(cells: [
              DataCell(Text("Language Code",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "Roboto"))),
              DataCell(Text("HND")),
            ]),
            DataRow(cells: [
              DataCell(Text("ISBN",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "Roboto"))),
              DataCell(Text("3320")),
            ]),
            DataRow(cells: [
              DataCell(Text("ISBN13",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "Roboto"))),
              DataCell(Text("DC Books")),
            ]),


          ],
          ),
        )
      ],
    )
    ,
    actions: <Widget>[

      RaisedButton(
        color: Colors.green,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child:
        Text("Add",style: TextStyle(color: Colors.white)),
      ),

    ],
  );
}}