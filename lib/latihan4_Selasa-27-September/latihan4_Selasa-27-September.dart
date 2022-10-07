import 'package:flutter/material.dart';

class Latihan4 extends StatefulWidget {
  @override
  State<Latihan4> createState() => _Latihan4State();
}

@override
Color mycolor = Colors.blue;
// void initState() {
//   mycolor;
//   // super.initState();
// }

class _Latihan4State extends State<Latihan4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Hello',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'World',
            style: TextStyle(color: mycolor, fontSize: 40),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    setState(() {
                      mycolor = Colors.blue;
                    });
                  },
                  child: Text(
                    'Blue',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    setState(() {
                      mycolor = Colors.red;
                    });
                  },
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    setState(() {
                      mycolor = Colors.green;
                    });
                  },
                  child: Text(
                    'Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
