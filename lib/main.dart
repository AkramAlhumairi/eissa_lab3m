import 'package:flutter/material.dart';

Text t = Text(
  "Hello Flutterr",
  textDirection: TextDirection.rtl,
  textAlign: TextAlign.center,
  style: TextStyle(
      color: Colors.amber,
      fontSize: 23,
      fontWeight: FontWeight.w900,
      decoration: TextDecoration.none),
);
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: t,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 15; i++)
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Center(
                  child: t,
                ),
                margin: EdgeInsets.only(bottom: 2),
                width: 200,
                height: 100,
              )
          ],
        ),
      )),
    ),
  ));
}
