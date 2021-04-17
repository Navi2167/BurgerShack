import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget mainBanner(BuildContext context) {
  var screen = MediaQuery.of(context).size;
  return Padding(padding: EdgeInsets.only(top: 10)
      ,child:Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
      width: screen.width,
      height: screen.height / 4,
      ));
}
