import 'package:flutter/material.dart';
import 'package:fruits_app/core/services/shared_pref_singleton.dart';
import 'package:fruits_app/fruits.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefSingleton.init();
  runApp(const FruitsApp());
}
