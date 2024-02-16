import 'package:flutter/material.dart';

import 'package:favorite_places/screens/map.dart';
import 'package:favorite_places/models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  String get locationImageUrl {
    final lat = place.location.latitude;
    final lng = place.location.longitude;
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$lng=&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$lat,$lng&key=AIzaSyDtlCWM4rFSLJ5JNDygHX1XCkf0F8jh2N8';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          place.image != null
              ? Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: FileImage(place.image!),
                    ),
                  ))
              : Container(
                  height: double.infinity,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 80),
                  child: const Text(
                    'Image not found',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => MapScreen(
                          location: place.location,
                          isSelecting: false,
                        ),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(locationImageUrl),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(
                    24,
                    16,
                    24,
                    40,
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black54,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    place.location.address,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
