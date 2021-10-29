import 'package:flutter/material.dart';
import 'package:library_management/Screens/Transactions/return_trans.dart';

class Detailmember extends StatefulWidget {

  @override
  _DetailmemberState createState() => _DetailmemberState();
}

class _DetailmemberState extends State<Detailmember> {
  @override

  Widget build(BuildContext context) {
    return AlertDialog(

      content: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Member Details",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: "Roboto")),

          DataTable(

            columns: [

              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),
              DataColumn(label: Text(" ")),

            ], rows: [
            DataRow(cells: [
              DataCell(Text("Name",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("Albert")),
              DataCell(Text("Phone",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("9497120966")),
              DataCell(Text("Books Taken",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("4")),

            ]),
            DataRow(cells: [
              DataCell(Text("Username",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("Albert@1")),
              DataCell(Text("Email",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("albert@gmail.com")),
              DataCell(Text("Outstanding Debt",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataCell(Text("400")),
            ]),
          ],
          ),
          SizedBox(
            height: 40,
          ),
          Text("Transaction",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: "Roboto")),
          SizedBox(
            height: 40,
          ),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,


        child:
        DataTable(

            columns: [

              DataColumn(label: Text("ID",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataColumn(label: Text("Book",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataColumn(label: Text("Taken On",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataColumn(label: Text("Deadline",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataColumn(label: Text("Returned On",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataColumn(label: Text("Amount",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),
              DataColumn(label: Text("Action",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Roboto"))),

            ], rows: [
        DataRow(cells: [
        DataCell(Text("123")),
          DataCell(Text("The silent patient")),
          DataCell(Text("1/2/2021")),
          DataCell(Text("2/2/2021")),
          DataCell(Text(" ")),
          DataCell(Text("10")),
          DataCell(Returntrans()),


        ])
        ]))
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