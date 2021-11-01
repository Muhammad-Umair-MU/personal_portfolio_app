// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_portfolio_app/constants.dart';
import 'package:personal_portfolio_app/services.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF00040D),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            color: Color(0xFF00040D),
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  'About me',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(
                  width: 230.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 4.0,
                  ),
                ),
                Container(
                  width: 250,
                  child: Text(
                    aboutMe,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'More about me  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                  WidgetSpan(
                      child: Icon(
                    FontAwesomeIcons.arrowCircleRight,
                    color: Colors.white,
                    size: 19.0,
                  ))
                ])),
                SizedBox(
                  height: 50.0,
                ),
                MaterialButton(
                    onPressed: () {},
                    child: Text('Download CV',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    color: Colors.white),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Skills',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          divider,
          Services(),
        ],
      ),
    );
  }
}




//  Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
              
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15.0),
//                   topRight: Radius.circular(15.0)),
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [Expanded(child: skillContainer()),Expanded(child: skillContainer())],
//                 )
//               ],
//             ),
//           )