import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../constant/r.dart';

class Latihan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Anderson',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Have a nice day',
                    style: TextStyle(
                        color: Color(0xFF858585),
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                          width: 42,
                          height: 42,
                          child: Image.asset(
                            R.assets.fp,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 33, right: 33, top: 28),
            child: SingleChildScrollView(
              child: Column(children: [
                Center(
                    child: ImageSlideshow(
                  width: double.infinity,
                  height: 200,
                  initialPage: 0,
                  indicatorColor: Colors.grey,
                  indicatorBackgroundColor: Colors.yellow,
                  children: [
                    _imageSlider(),
                    _imageSlider(),
                    _imageSlider(),
                    _imageSlider(),
                    _imageSlider(),
                  ],
                  onPageChanged: (value) {},
                  autoPlayInterval: 3000,
                  isLoop: true,
                )),
                SizedBox(
                  height: 79,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended Article',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Show All',
                            style: TextStyle(
                                color: Color(0xFFBEDE61),
                                fontSize: 8,
                                fontWeight: FontWeight.w400)),
                      )
                    ]),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [_article(), _article1()],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended Article',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Show All',
                            style: TextStyle(
                                color: Color(0xFFBEDE61),
                                fontSize: 8,
                                fontWeight: FontWeight.w400)),
                      )
                    ]),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xFF363636),
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(children: [
                    Image.asset(R.assets.g4,
                        height: 120, fit: BoxFit.fitHeight),
                    SizedBox(
                      width: 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 240,
                            child: Text(
                              'More animal species are getting COVID-19 for the first time',
                              maxLines: 3,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(Icons.menu, color: Colors.white),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'READ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                )
              ]),
            ),
          ),
        ));
  }
}

class _article extends StatelessWidget {
  const _article({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 290,
      decoration: BoxDecoration(
          color: Color(0xFF363636), borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    R.assets.g2,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  'The 12 most intriguing animal discoveries of 2021',
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(Icons.menu, color: Colors.white),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'READ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _article1 extends StatelessWidget {
  const _article1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 290,
      decoration: BoxDecoration(
          color: Color(0xFF363636), borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    R.assets.g3,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  'Snakebites kill tens thousands of africans a year',
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(Icons.menu, color: Colors.white),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'READ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _imageSlider extends StatelessWidget {
  const _imageSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Image.asset(
            R.assets.g1,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black])),
          ),
          Positioned(
              left: 22,
              bottom: 29,
              child: Text('ANIMALS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700)))
        ],
      ),
    );
  }
}
