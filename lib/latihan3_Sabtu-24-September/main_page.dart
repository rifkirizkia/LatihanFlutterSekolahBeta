import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../constant/r.dart';
import 'explore.dart';
import 'latihan3.dart';
import 'notificartion.dart';
import 'profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final _pc = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildBottomNavigation(),
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: PageView(
          controller: _pc,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Latihan3(),
            ExplorePage(),
            NotificationPage(),
            ProfilePage()
          ],
        ));
  }

  Padding _buildBottomNavigation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(0.20),
              offset: Offset(
                0,
                4,
              ),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomAppBar(
            color: Colors.transparent,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          index = 0;
                          setState(() {});
                          _pc.animateToPage(
                            0,
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 10),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                                padding: EdgeInsets.all(index == 0 ? 10 : 0),
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                child: Icon(Icons.home,
                                    color: index == 0
                                        ? Color(0xffBEDE61)
                                        : Colors.grey)),
                            index == 0
                                ? Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Color(0xffBEDE61),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          index = 1;
                          setState(() {});
                          _pc.animateToPage(
                            1,
                            curve: Curves.easeInOut,
                            duration: const Duration(microseconds: 1),
                          );
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                                padding: EdgeInsets.all(index == 1 ? 10 : 0),
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                child: Icon(Icons.explore,
                                    color: index == 1
                                        ? Color(0xffBEDE61)
                                        : Colors.grey)),
                            index == 1
                                ? Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Color(0xffBEDE61),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          index = 2;
                          setState(() {});
                          _pc.animateToPage(
                            2,
                            curve: Curves.easeInOut,
                            duration: const Duration(microseconds: 1),
                          );
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                                padding: EdgeInsets.all(index == 2 ? 10 : 0),
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                child: Icon(Icons.notifications,
                                    color: index == 2
                                        ? Color(0xffBEDE61)
                                        : Colors.grey)),
                            index == 2
                                ? Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Color(0xffBEDE61),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          index = 3;
                          setState(() {});
                          _pc.animateToPage(
                            3,
                            curve: Curves.easeInOut,
                            duration: const Duration(microseconds: 1),
                          );
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                                padding: EdgeInsets.all(index == 3 ? 10 : 0),
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                child: Icon(Icons.person,
                                    color: index == 3
                                        ? Color(0xffBEDE61)
                                        : Colors.grey)),
                            index == 3
                                ? Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Color(0xffBEDE61),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // shape: CircularNotchedRectangle(),
          ),
        ),
      ),
    );
  }
}
