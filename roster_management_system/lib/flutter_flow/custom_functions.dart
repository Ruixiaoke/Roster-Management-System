import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String dateStampToWeekday(DateTime date) {
  String day = date.weekday.toString();
  switch (day) {
    case '1':
      day = 'Monday';
      break;
    case '2':
      day = 'Tuesday';
      break;
    case '3':
      day = 'Wednesday';
      break;
    case '4':
      day = 'Thursday';
      break;
    case '5':
      day = 'Friday';
      break;
    case '6':
      day = 'Saturday';
      break;
    case '7':
      day = 'Sunday';
      break;
  }
  return day;
}

int dateStampToWeekdayint(DateTime date) {
  int day = date.weekday;
  return day;
}
