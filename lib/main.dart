import 'package:flutter/material.dart';
import 'package:flutter_app_final_6252410025/views/home_ui.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        fontFamily: 'Itim',
      ),
    )
  );
}