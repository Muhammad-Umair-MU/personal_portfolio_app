// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_portfolio_app/constants.dart';
import 'package:personal_portfolio_app/navbar.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('asset/developer.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Navbar(),
            Column(
              children: [
                Text(
                  'Hello, I am',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
                Text(
                  'Umair',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Flutter Developer'),
                          TyperAnimatedText('UI/UX Enthusiast'),
                          TyperAnimatedText('Innovative Thinker'),
                          TyperAnimatedText('Problem Solver'),
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                  onPressed: () {
                    launchURL();
                  },
                  child: Text('Hire me',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 15.0,
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


    // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //         Text(
    //           'MUK',
    //           style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               color: Colors.white,
    //               fontSize: 25.0),
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: Icon(Icons.line_weight_outlined),
    //           color: Colors.white,
    //           iconSize: 25.0,
    //         ),
    //       ]),

    //  Text(
    //               'Mobile App Developer\n',
    //               style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.white,
    //                   fontSize: 20.0),
    //             ),