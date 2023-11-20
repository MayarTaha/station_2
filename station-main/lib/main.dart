import 'package:flutter/material.dart';
import 'package:station/addcustom.dart';
import 'package:station/customers.dart';
import 'package:station/first.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:station/generated/l10n.dart';
import 'package:station/home.dart';
import 'package:station/log_in.dart';
import 'package:station/pay.dart';
import 'package:station/price.dart';
import 'package:station/pump.dart';
import 'package:station/suppliers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
      home: Home(),
    );
  }
}
