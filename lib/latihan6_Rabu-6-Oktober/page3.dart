import 'package:flutter/material.dart';

import 'page4.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Page 3'),
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
                      builder: ((context) => Page4()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('Navigation to Page 4')),
          ],
        ),
      ),
    );
  }
}
