import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/supabase/supabase.dart';
import '../../auth/supabase_auth/auth_util.dart';

dynamic postToJson(
  String? title,
  String? description,
  int? quantity,
  String? contributionType,
  double? sellingPrice,
  String? visiblity,
  String? productCategory,
  List<String>? productImages,
  List<String>? selectiveRecyclers,
) {
  Map<String, dynamic> data = {
    'title': title,
    'description': description,
    'weight': quantity,
    'contributionType': contributionType,
    'productPrice': sellingPrice,
    'visiblity': visiblity,
    'productCategory': productCategory,
    'productImages': productImages,
    'selectiveRecyclers': selectiveRecyclers
  };
  return data;
}

double calculateTotalPrice(
  double sellingPrice,
  double serviceFee,
) {
  return sellingPrice + serviceFee;
}
