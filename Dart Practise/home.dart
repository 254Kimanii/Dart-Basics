import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title:Text('Calculator', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          Row(
            spacing: 10,
            children: [
             Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('1', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('2', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('3', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             )
            ],
          ),
            Row(
            spacing: 10,
            children: [
             Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('4', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('5', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('6', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             )
            ],
          ),
            Row(
            spacing: 10,
            children: [
             Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('7', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('8', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('9', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             )
            ],
          ),
            Row(
            spacing: 10,
            children: [
             Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('0', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('.', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             ),
              Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top:10),
              child: Text('=', style: TextStyle(
                backgroundColor: Colors.grey,
                fontSize: 25,
              ),),
             )
            ],
          )
        ],
      ),
    );
  }
}