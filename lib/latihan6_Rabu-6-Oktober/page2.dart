import 'package:flutter/material.dart';
import 'package:pertemuan1/latihan6_Rabu-6-Oktober/page1.dart';

import 'page3.dart';

class Page2 extends StatefulWidget {
  Page2({Key key, this.back}) : super(key: key);
  Page1 back;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: ((context) => Page1(
                          back: true,
                        )),
                  ),
                  (context) => false);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('Latihan Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => Page3()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('Navigation to Page 3')),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.back == false;
                  });
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: ((context) => Page1(
                              back: true,
                            )),
                      ),
                      (context) => false);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('Navigation to Page 1')),
          ],
        ),
      ),
    );
  }
}
