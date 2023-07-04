import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(String hinttext) {
  return InputDecoration(
    contentPadding:
    const EdgeInsets.symmetric(vertical: 17.0, horizontal: 10.0),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.5,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.5,
      ),
    ),
    errorStyle: TextStyle(color: Colors.red),
    hintText: hinttext,
    hintStyle: TextStyle(
        fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 15),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: Color.fromRGBO(0, 154, 187, 1), width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 154, 187, 1),
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 154, 187, 1),
        width: 1.5,
      ),
    ),
  );
}