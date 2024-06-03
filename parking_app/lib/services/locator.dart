import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parking_app/managers/user_manager.dart';

import '../common/constants.dart';
import '../firebase_options.dart';

GetIt locator = GetIt.instance;

Future<void> setupDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Firebase
  await Firebase.initializeApp(options: _options);

  /// Register Singletons
  locator.registerSingleton<UserManager>(AppUserManager());

  /// Register Services

  /// Register Repos
}

/// Get Firebase Options
FirebaseOptions get _options {
  switch (Constants.flavor) {
    default:
      return DefaultFirebaseOptions.currentPlatform;
  }
}
