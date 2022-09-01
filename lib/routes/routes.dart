
import 'package:flutter/material.dart';
import 'package:motorcum/views/forum/forum_results_of_titles.dart';
import 'package:motorcum/views/forum/forum_search_by_motor.dart';
import 'package:motorcum/views/forum/forum_titles.dart';
import 'package:motorcum/views/login.dart';
import 'package:motorcum/views/home.dart';
import 'package:motorcum/views/moto_technical/moto_details.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "login_screen": (context) => const LoginPage(),
  "home_screen": (context) => HomePage(),
  "moto_details_screen": (context) => const MotoDetails(),
  "forum_titles_screen": (context) => const ForumTitles(),
  "forum_search_screen": (context) => const ForumSearch(),
  "forum_results_screen": (context) => const ForumResults(),
};