import 'package:add_to_app_flutter_module/main.dart';
import 'package:flutter/material.dart';

export 'hero_list/hero_list.dart';
export 'news_feed/news_feed.dart';
export './settings/settings.dart';
export 'bottom_bar/bottom_bar.dart';
export 'onboarding/onboarding.dart';
export 'utils/constants.dart';
export 'model/model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          color: Colors.blue,
        ),
      ),
      home: const BottomBarPage(),
    );
  }
}
