import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newfutterpro/mywidgets/mainBanner.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/mycolor.dart';
import 'mywidgets/listItem.dart';
import 'mywidgets/myMap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger Shack',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Testing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final cHour = DateTime.now().hour;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  /* AnimationController _controller;
  Animation _animation;*/
  TabController _tabController;
  FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        print(_tabController.index);
      });
    });
/*    _controller =
        AnimationController(vsync: this, duration: Duration(microseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });*/
  }

  @override
  void dispose() {
    /*_controller.dispose();*/
    _focusNode.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            top: true,
            bottom: true,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _logoText(context),
                        Container(
                            child: SvgPicture.asset('assets/images/user.svg'),
                            height: 30,
                            width: 30)
                      ]),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Good afternoon",
                        style: GoogleFonts.muli(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        textAlign: TextAlign.start,
                      )),
                  mainBanner(context),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10),
                    child: TabBar(
                      controller: _tabController,
                      tabs: [_tabStyle('Pickup'), _tabStyle('Delivery')],
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 4.0),
                                color: Colors.orangeAccent[100],
                                blurRadius: 10.0,
                                spreadRadius: 2.0)
                          ],
                          color: MyColor.theme_color,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Expanded(
                      child: TabBarView(children: [
                    ListView.builder(
                        padding: EdgeInsets.only(top: 10),
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return listItem(context, index);
                        }),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: MyColor.theme_color,
                              width: 2.0,
                              style: BorderStyle.solid)),
                      child: myMap(context),
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    ))
                  ], controller: _tabController))
                ])))); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

Widget _tabStyle(String text) {
  return Tab(
    child:
        Text(text, style: GoogleFonts.muli(textStyle: TextStyle(fontSize: 15))),
  );
}

Widget _logoText(BuildContext context) {
  return RichText(
      text: TextSpan(style: DefaultTextStyle.of(context).style, children: [
    TextSpan(
        text: 'BURGER',
        style: GoogleFonts.muli(
            textStyle: TextStyle(
                decoration: TextDecoration.none,
                color: MyColor.theme_color,
                fontSize: 25,
                fontWeight: FontWeight.w900))),
    TextSpan(
        text: 'SHACK',
        style: GoogleFonts.muli(
            textStyle: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.grey,
                fontSize: 25,
                fontWeight: FontWeight.normal)))
  ]));
}
