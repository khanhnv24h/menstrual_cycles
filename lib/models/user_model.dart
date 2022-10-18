import 'package:flutter/material.dart';

class UserModel {
  String uid;
  String name;
  String address;
  String phoneNumber;
  int menstrualLength;
  int periodLength;
  List<DateTime> lastMenstruation;
  List<String> requestIds;

  UserModel({
    required this.uid,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.periodLength,
    required this.menstrualLength,
    required this.lastMenstruation,
    required this.requestIds,
  });
}
