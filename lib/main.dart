import 'package:flutter/material.dart';
import 'package:fruits_app/core/services/shared_pref_singleton.dart';
import 'package:fruits_app/firebase_options.dart';
import 'package:fruits_app/fruits.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefSingleton.init();
  runApp(const FruitsApp());
}
