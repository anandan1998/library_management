import 'package:flutter/material.dart';


class Addbook extends StatefulWidget {

  @override
  _AddbookState createState() => _AddbookState();
}

class _AddbookState extends State<Addbook> {
  @override
Widget build(BuildContext context) {
  return new AlertDialog(
    title: const Text('New Book'),
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
                labelText: 'Book Title',
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
                labelText: 'Auther',
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
                labelText: 'Description',
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
                labelText: 'Base pay',
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
}}
