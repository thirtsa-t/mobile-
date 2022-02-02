import 'package:flutter/material.dart';

InputDecoration buildInputDecoration( String hinttext, ) {
  
  return InputDecoration(
     hintText: hinttext,
     
     hintStyle: TextStyle( color: Colors.grey[400]),
     
  

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color:Color(0xFFBDBDBD),
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: Color(0xFFBDBDBD) , 
        width: 1.5,
      ),
    ),
  );
}
