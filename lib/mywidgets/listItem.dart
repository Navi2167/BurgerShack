import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfutterpro/constants/mycolor.dart';
import 'package:newfutterpro/mycolor.dart';

Widget listItem(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  return Stack(children: [
    Container(
      margin: EdgeInsets.only(bottom: 30.0),
      height: height / 3.5,
      decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10.0)),
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
              colors: [MyColor.trans, MyColor.trans_black]),
        ),
      ),
    ]),
    Positioned(
        bottom: 55.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            '20-25 mins',
            style: GoogleFonts.muli(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white),
              child: Text(
                'Open Now',
                style: GoogleFonts.muli(
                    textStyle:
                        TextStyle(color: Colors.orangeAccent, fontSize: 15.0)),
              ))
        ]))
  ]);
}
