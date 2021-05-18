library date_formatter;
// import 'dart:io';
// import 'package:flutter/material.dart';

class DateFormatter {


  String dayAlph(int day) {
    var dayValue;
    if (day.toString().endsWith('1')) {
      dayValue = 'st';
    } else if (day.toString().endsWith('2')) {
      dayValue = 'nd';
    } else if (day.toString().endsWith('3')) {
      dayValue = 'rd';
    } else {
      dayValue = 'th';
    }
    return dayValue;
  }

  String weekDay(int day) {
    var dayValue;
    switch (day) {
      case 1:
        dayValue = 'Mon';
        break;
      case 2:
        dayValue = 'Tue';
        break;
      case 3:
        dayValue = 'Wed';
        break;
      case 4:
        dayValue = 'Thur';
        break;
      case 5:
        dayValue = 'Fri';
        break;
      case 6:
        dayValue = 'Sat';
        break;
      case 7:
        dayValue = 'Sun';
        break;
    }
    return dayValue;
  }

  String format(DateTime date) {
    var monthValue;

    switch (date.month) {
      case 01:
        monthValue = 'Jan';
        break;
      case 02:
        monthValue = 'Feb';
        break;
      case 03:
        monthValue = 'March';
        break;
      case 04:
        monthValue = 'April';
        break;
      case 05:
        monthValue = 'May';
        break;
      case 06:
        monthValue = 'June';
        break;
      case 07:
        monthValue = 'July';
        break;
      case 08:
        monthValue = 'Aug';
        break;
      case 09:
        monthValue = 'Sept';
        break;
      case 10:
        monthValue = 'Oct';
        break;
      case 11:
        monthValue = 'Nov';
        break;
      case 12:
        monthValue = 'Dec';
        break;
    }
    return weekDay(date.weekday) + ' ' + monthValue + ' ' + date.day.toString() + dayAlph(date.day) + ' ' + date.year.toString();
  }
}
