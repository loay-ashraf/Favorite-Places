import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'package:favorite_places/screens/places.dart';

class FavoritePlacesApp extends StatelessWidget {
  const FavoritePlacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite Places',
      darkTheme: AppTheme.dark(),
      theme: AppTheme.light(),
      home: const PlacesScreen(),
    );
  }
}
