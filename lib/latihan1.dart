import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text(
          "Halo saya Latihan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Center(
              child: Text(
            "ABC",
            style: TextStyle(color: Colors.black),
          ))),
      body: Center(
        child: Column(children: [
          Text("Saya widget ditengah"),
          Container(
              width: double.infinity, height: 50, color: Colors.red.shade400),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Saya Kiri"), Text("Saya Kanan")],
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            color: Colors.yellow,
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.purple,
              child: Center(
                child: Text(
                  "Saya Berwarna",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
              height: 100,
              color: Colors.black,
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Saya dibawah Sendiri",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
