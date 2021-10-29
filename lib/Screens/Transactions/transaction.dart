import 'package:flutter/material.dart';
import 'package:library_management/Screens/Home/Components/side_bar.dart';
import 'package:library_management/Screens/Home/Components/top_bar.dart';
import 'package:library_management/Screens/Transactions/seach_trans.dart';
import 'package:library_management/Screens/Transactions/return_trans.dart';

class Transactions extends StatefulWidget {

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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

            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: Text(
                  "Transactions",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: "Roboto",
                  ),
                )),




          Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              height: (height*.75)-10,
              width: ((width)*.75)-25,

              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),

                      child: Searchtrans()
                  ),
                  Container(
                      height: (height*.5)-10,
                      width: ((width)*.75)-25,
                      margin: EdgeInsets.fromLTRB(8, 0, 20, 8),
                      child:SingleChildScrollView(
                          scrollDirection: Axis.vertical,


                          child:
                          DataTable(

                            columns: [

                              DataColumn(label: Text("ID")),
                              DataColumn(label: Text("Action")),
                              DataColumn(label: Text("Member")),
                              DataColumn(label: Text("Book")),
                              DataColumn(label: Text("Start date")),
                              DataColumn(label: Text("End date")),
                              DataColumn(label: Text("Amount")),
                              DataColumn(label: Text("Return"))
                            ], rows: [
                            DataRow(cells: [
                              DataCell(Text("1")),
                              DataCell(Text("Issued")),
                              DataCell(Text("Chethan Bhagath")),
                              DataCell(Text("Girl in the 105")),
                              DataCell(Text("21-1-2002")),
                              DataCell(Text("25-2-2002")),
                              DataCell(Text("30")),
                              DataCell(Returntrans()),
                            ]),


                          ],
                          )
                      )

                  )],
              )

          )])
      ]),
    );
  }
}
