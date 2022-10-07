import 'package:flutter/material.dart';

import 'page1.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Page 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: ((context) => Page1()),
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
