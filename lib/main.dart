import 'package:flutter/material.dart';
import 'package:my_favorite_list_using_provider/app.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<FavoriteProvider>(
      child: const MyApp(),
      create: (_) => FavoriteProvider(),
    ),
  );
}
