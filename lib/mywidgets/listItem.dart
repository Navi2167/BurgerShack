import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfutterpro/approutes.dart';
import 'package:newfutterpro/constants/mycolor.dart';
import 'package:newfutterpro/constants/routes.dart';

Widget listItem(BuildContext context, int index) {
  var height = MediaQuery.of(context).size.height;
  return Stack(children: [
    Container(
      padding: EdgeInsets.only(bottom: 20.0),
      margin: EdgeInsets.only(bottom: 30.0),
      height: height / 3.5,
      decoration: BoxDecoration(
          color: MyColor.theme_color,
          borderRadius: BorderRadius.circular(10.0)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Expanded(
                child: Row(children: [
              Text(
                '20-25 mins',
                style: GoogleFonts.muli(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
              ),
              Spacer(),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.pickPage);
                  },
                  child: Text('Open Now',
                      style: GoogleFonts.muli(
                          textStyle: TextStyle(
                              color: MyColor.theme_color, fontSize: 15.0))))
            ]))),
      ),
    ),
    Stack(children: [
      Container(
          height: height / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://b.zmtcdn.com/data/pictures/chains/0/18976620/e01ffc3a4d1f4a76e63b3250299f4793.jpg?fit=around|771.75:416.25&crop=771.75:416.25;*,*')),
          )),
      Container(
          height: height / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [MyColor.trans, MyColor.trans_black])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('Location',
                          style: GoogleFonts.muli(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold))))
                ])),
          )),
      Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text('BURGER SHACK',
              style: GoogleFonts.muli(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 18.0))))
    ])
  ]);
}
