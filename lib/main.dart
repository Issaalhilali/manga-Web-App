import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:manga/admin/providers/auth_provider.dart';

import 'package:manga/admin/screen/login.dart';
import 'package:manga/admin/screen/resgister.dart';
import 'package:manga/components/applocal.dart';
import 'package:manga/home/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ListenableProvider(create: (_) => AuthProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics analytics = FirebaseAnalytics();
    return MaterialApp(
      localizationsDelegates: [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', ''), // English, no country code
        const Locale('en', ''), // Spanish, no country code
      ],
      localeResolutionCallback: (currentLang, supportlang) {
        if (currentLang != null) {
          for (Locale local in supportlang) {
            if (local.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportlang.first;
      },
      debugShowCheckedModeBanner: false,
      title: 'Manga',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: Home.id,
      // home: Home(),
      routes: {
        Home.id: (context) => Home(),
        LoginAdmin.id: (context) => LoginAdmin(),
        RegisterAdmin.id: (context) => RegisterAdmin(),
      },
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
    );
  }
}
