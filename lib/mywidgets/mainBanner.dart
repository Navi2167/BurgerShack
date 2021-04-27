import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfutterpro/constants/mycolor.dart';

Widget mainBanner(BuildContext context) {
  var screen = MediaQuery.of(context).size;
  return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Stack(children: [
        Container(
            height: screen.height / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://b.zmtcdn.com/data/pictures/chains/0/18976620/e01ffc3a4d1f4a76e63b3250299f4793.jpg?fit=around|771.75:416.25&crop=771.75:416.25;*,*')),
            )),
        Container(
            padding: EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
            child: Column(children: [
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Burger\nShack".toUpperCase(),
                        style: GoogleFonts.muli(
                            textStyle: TextStyle(
                              height: 0.8,
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900)),
                      ))),
              Align(
                  child: Text(
                'Normal Text',
                style:
                    GoogleFonts.muli(textStyle: TextStyle(color: Colors.white)),
                textAlign: TextAlign.left,
              ),alignment: Alignment.centerLeft,)
            ]),
            height: screen.height / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [MyColor.trans, MyColor.trans_black])))
      ]));
}
