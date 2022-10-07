import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant/r.dart';

class Latihan2 extends StatefulWidget {
  const Latihan2({Key key}) : super(key: key);

  @override
  State<Latihan2> createState() => _Latihan2State();
}

class _Latihan2State extends State<Latihan2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 210, 210, 210),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  R.assets.wp,
                )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Rifki Rizkia',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          R.assets.fp,
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              )),
          Center(
            child: Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Halo Button',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Pencet Saya',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.abc),
                              SizedBox(
                                width: 15,
                              ),
                              Text('Pesan Test Sekarang'),
                            ],
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                // Change your radius here
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          )),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
