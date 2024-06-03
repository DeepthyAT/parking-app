import 'package:flutter/material.dart';
import 'package:parking_app/services/locator.dart';

import 'app/app.dart';

Future<void> main() async {
  await setupDependencies();
  runApp(const PosApp());
}
