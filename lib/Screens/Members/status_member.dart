import 'package:flutter/material.dart';

import 'package:library_management/Screens/Members/member_details.dart';
class Statusmember extends StatefulWidget {

  @override
  _StatusmemberState createState() => _StatusmemberState();
}

class _StatusmemberState extends State<Statusmember> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        child:
        Row(
          children: [
            Container(
                child:
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            Detailmember());

                  },
                  child:
                  Text("Details"),
                )
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                child:
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {},
                  child:
                  Text("Delete",style: TextStyle(color: Colors.white)),
                )
            )
          ],
        )
    );
  }
}