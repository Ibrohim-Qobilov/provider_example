import 'package:flutter/material.dart';
import 'package:my_favorite_list_using_provider/assets/themes/light_theme.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Favorite list',
      theme: LightTheme.lightTheme(),
      home: const MainPage(),
    );
  }
}
