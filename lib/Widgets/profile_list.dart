
import 'package:flutter/cupertino.dart';

Widget ProfileList(String Details , String UserDetails) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 140,
        child: Text(Details, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
      ),
      Expanded(
        child: Container(
          child: Text(UserDetails, style: TextStyle(fontSize: 12,color: Color.fromRGBO(119, 119, 119, 1)),),
        ),
      )
    ],
  );
}