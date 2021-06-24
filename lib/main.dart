import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:state_get/translation.dart';

import 'language.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: JpTranslation(),
      locale: Get.deviceLocale,
      home: Language(),
    );
  }
}
