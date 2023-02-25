import 'package:flutter/material.dart';

Widget defaultButtons({
  double width = double.infinity,
  required Color background,
  required bool isUpperCase,
  required VoidCallback func,
  required String text,
  required double radius,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: func,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
