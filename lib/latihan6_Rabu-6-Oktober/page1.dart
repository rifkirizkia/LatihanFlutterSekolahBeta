import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatefulWidget {
  const  Page1({Key key, this.back}) : super(key: key);
  final bool back;
  @override
  State<Page1> createState() => _Page1State();
}

int angka = 0;

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Page 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Saya dipanggil lagi sebanyak $angka'),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    angka++;
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => Page2()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('Navigation to Page 2')),
            SizedBox(
              height: 5,
            ),
            if (widget.back == true) Text('Saya kembali dari halaman 2'),
          ],
        ),
      ),
    );
  }
}
