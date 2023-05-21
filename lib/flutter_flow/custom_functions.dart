import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool? isValueZero(dynamic data) {
  int value = data;
  return value == 0;
}

String getBookingRefNumber(String value) {
  return value.substring(0, 8).toUpperCase();
}

int getSumOfTicketValue(dynamic value) {
  return value['standard_count'] * value['standard_price'] +
      value['express_count'] * value['express_price'] +
      value['vip_count'] * value['vip_price'];
}

List<int> getIntListFromJson(dynamic value) {
  if (value['favourite_ids'] == null) {
    return [];
  }
  return value['favourite_ids'].cast<int>();
}

String? printList(List<int> value) {
  if (value.isEmpty) {
    return "Empty";
  }
  return value.join(', ');
}

DateTime getDateFromJson(dynamic value) {
  return DateTime.parse(value['created_at']);
}
