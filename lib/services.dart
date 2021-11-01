// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
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
                  'Specialized In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ),
          Row(children: [
            Expanded(
                child: skillContainer(
              imageLabel: 'asset/services/idea.png',
              textLabel: 'Concepting',
            )),
            Expanded(
                child: skillContainer(
              imageLabel: 'asset/services/ui.png',
              textLabel: 'UI&UX',
            )),
            Expanded(
                child: skillContainer(
              imageLabel: 'asset/services/app.png',
              textLabel: 'App Dev',
            )),
          ]),
          Row(children: [
            Expanded(
                child: skillContainer(
              imageLabel: 'asset/services/flutter.png',
              textLabel: 'Flutter',
            )),
            Expanded(
                child: skillContainer(
              imageLabel: 'asset/services/android.png',
              textLabel: 'Android',
            )),
            Expanded(
                child: skillContainer(
              imageLabel: 'asset/services/rapid.png',
              textLabel: 'Rapid Dev',
            )),
          ]),
        ],
      ),
    );
  }
}

class skillContainer extends StatelessWidget {
  const skillContainer(
      {Key? key, required this.imageLabel, required this.textLabel})
      : super(key: key);

  final String imageLabel;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF00040D),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageLabel,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(textLabel,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
