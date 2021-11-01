// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio_app/about_myself.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "<",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            TextSpan(
              text: 'Umair Khan',
              style: TextStyle(
                  fontFamily: "Agustina",
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "/>",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ])),
        ],
      ),
    );
  }
}
