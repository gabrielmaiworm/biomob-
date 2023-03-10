import 'dart:convert';
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

String stringGETusersLocation(LatLng? usersLocation) {
  if (usersLocation == null ||
      (usersLocation.latitude == 0 && usersLocation.longitude == 0)) {
    return "40.8295538/-73.9386429";
  }
  String location = "${usersLocation.latitude}/${usersLocation.longitude}";
  return location;
}

bool showSearchResult(
  String? textSearchFor,
  String? textSearchIn,
) {
  return textSearchIn!.contains(textSearchFor!);
}

double? returnDistanceBetweenTwoPoints(
  LatLng? positionOne,
  LatLng? positionTwo,
) {
  // calculate the distance between two points on a spheroid and return distance as double
  var p = 0.017453292519943295;
  var a = 0.5 -
      math.cos((positionTwo!.latitude - positionOne!.latitude) * p) / 2 +
      math.cos(positionOne.latitude * p) *
          math.cos(positionTwo.latitude * p) *
          (1 - math.cos((positionTwo.longitude - positionOne.longitude) * p)) /
          2;
  double result = 12742 * math.asin(math.sqrt(a));
  // uncomment the line below if you want the result to be rounded
  // double finalResult = result.roundToDouble();
  // if you uncommented the line above, you have to replace result in the line below with finalResult
  return result;
}

LatLng? transformLatLng(
  String? latitude,
  String? longitude,
) {
  if ((latitude == null) || (longitude == null)) {
    return null;
  } else {
    try {
      final latlng = LatLng(double.parse(latitude), double.parse(longitude));
      return latlng;
    } catch (e) {
      return null;
    }
  }
}

bool? searchBar(
  String? textSearchFor,
  String? textSearchIn,
) {
  return textSearchIn?.toLowerCase().contains(textSearchFor!.toLowerCase());
}

bool validaSenha(
  String password,
  String passwordTwo,
) {
  if (password == passwordTwo && password.length >= 6) {
    return true;
  } else {
    return false;
  }
}
