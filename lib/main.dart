import 'dart:developer';
import 'package:chattysimple/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    log('Firebase initialization error: $e');
  }
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashScreen(),
  ));
}
