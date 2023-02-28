import 'package:flutter/material.dart';
import 'package:quiz_quiz/Quiz.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=> HomeScreen(),
      }
    ),
  );
}