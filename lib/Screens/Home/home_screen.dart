import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:library_management/Screens/Home/Components/search_bar.dart';
import 'package:library_management/Screens/Home/Components/side_bar.dart';
import 'package:library_management/Screens/Home/Components/top_bar.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
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
          SearchbarHome(),
          Container(
            height: height*.7,
            width: width*.7,
            child: ListView(
              children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: width*.7,
              height: height*.1,
              child: Row(
                children: [
                  Text("Popular Book"),
                  Spacer(),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child:
                        Text("Download"),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: width*.7,
              height: height*.4,
              child: DataTable(

                  columns: [

                    DataColumn(label: Text("Title")),
                    DataColumn(label: Text("Total")),
                    DataColumn(label: Text("Available")),
                    DataColumn(label: Text("Earnings"))
                  ],
                  rows: [
              DataRow(cells: [
              DataCell(Text("2 states")),
              DataCell(Text("500")),
              DataCell(Text("5")),
              DataCell(Text("1200")),

        ]),])
            ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: width*.7,
                height: height*.1,
                child: Row(
                  children: [
                    Text("Highest Paying Customer"),
                    Spacer(),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child:
                      Text("Download"),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: width*.7,
                  height: height*.4,
                  child: DataTable(

                      columns: [

                        DataColumn(label: Text("Member")),
                        DataColumn(label: Text("Books Taken")),
                        DataColumn(label: Text("Earnings")),

                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("Albert")),
                          DataCell(Text("23")),
                          DataCell(Text("2300")),


                        ]),])
              )
            ],),
          )
        ])
      ]),
    );
  }
}
