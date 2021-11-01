// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_portfolio_app/constants.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 70.0),
      color: Colors.black,
      child: Column(
        children: [
          Text(
            'Projects',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          divider,
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Projects',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                        textAlign: TextAlign.left,
                      ),
                      TextButton(
                          onPressed: () {
                            launchURL();
                          },
                          child: Text(
                            'View all',
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                ),
                CarouselSlider(
                    items: [
                      projectCard(
                        projectImageLabel: 'clime',
                        projectText: 'Clime App',
                      ),
                      projectCard(
                        projectImageLabel: 'flashChat',
                        projectText: 'Flash Chat App',
                      ),
                      projectCard(
                        projectImageLabel: 'bmi',
                        projectText: 'BMI Calculator App',
                      ),
                    ],
                    options: CarouselOptions(
                      height: 150.0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class projectCard extends StatelessWidget {
  const projectCard(
      {Key? key, required this.projectImageLabel, required this.projectText})
      : super(key: key);

  final String projectImageLabel;
  final String projectText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'asset/projects/$projectImageLabel.png',
                height: 100.0,
                width: 100.0,
              ),
              Text(projectText,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15.0,
              bottom: 7.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    launchURL();
                  },
                  child: Icon(
                    FontAwesomeIcons.arrowCircleRight,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


//  Container(
//                   color: Colors.black,
//                   width: MediaQuery.of(context).size.width - 5.0,
//                   height: 50.0,
//                   child: Card(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ListTile(
//                           leading: Image.asset('asset/projects/clime.png'),
//                           title: Text('Clime App'),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Icon(
//                               Icons.forward,
//                               color: Colors.black,
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 )



              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),


          // SizedBox(
          //     width: 230.0,
          //     child: Divider(
          //       color: Colors.white,
          //       thickness: 4.0,
          //     )),