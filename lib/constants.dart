// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String aboutMe =
    'I am an android (Native) and flutter developer with a proven background in multiple app development projects. I have achieved numerous certifications in the area of AI, cloud computing, and non-technical certificates such as entrepreneurship, design thinking for problem-solving, business writing, etc. I have worked in Machine Learning, database management, and web development.';

const _url = 'https://github.com/Muhammad-Umair-MU';

void launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

SizedBox divider = SizedBox(
    width: 230.0,
    child: Divider(
      color: Colors.white,
      thickness: 4.0,
    ));
