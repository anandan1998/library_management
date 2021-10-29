import 'package:flutter/material.dart';
import 'package:library_management/Screens/Home/Components/side_bar.dart';
import 'package:library_management/Screens/Home/Components/top_bar.dart';
import 'package:library_management/Screens/Members/search_member.dart';
import 'package:library_management/Screens/Members/status_member.dart';

class Member extends StatefulWidget {

  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
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
          Row(children: [
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: Text(
                  "Members",
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
                    _buildPopupDialog(context),);

                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      Text("Add Member"),
                    ],
                  ),
                ))
          ]),


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

                      child: Searchmember()
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
                              DataColumn(label: Text("Username")),
                              DataColumn(label: Text("Phone")),
                              DataColumn(label: Text("Email")),
                              DataColumn(label: Text("Status"))
                            ], rows: [
                            DataRow(cells: [
                              DataCell(Text("1")),
                              DataCell(Text("chetan@1")),
                              DataCell(Text("9497120966")),
                              DataCell(Text("chetan@gmail.com")),
                              DataCell(Statusmember()),
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
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('New Member'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 60,
            width: 350,
            padding: EdgeInsets.fromLTRB(10, 10, 20, 8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Full name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )),),
          ),
          Container(
            height: 60,
            width: 350,
            padding: EdgeInsets.fromLTRB(10, 10, 20, 8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )),),
          ),
          Container(
            height: 60,
            width: 350,
            padding: EdgeInsets.fromLTRB(10, 10, 20, 8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Phone',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )),),
          ),
          Container(
            height: 60,
            width: 350,
            padding: EdgeInsets.fromLTRB(10, 10, 20, 8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )),),
          )],
      ),
      actions: <Widget>[
        new
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
  }
}

