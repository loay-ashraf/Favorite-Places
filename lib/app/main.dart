import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'favorite_places_app.dart';

void main() {
  runApp(
    const ProviderScope(child: FavoritePlacesApp()),
  );
}
