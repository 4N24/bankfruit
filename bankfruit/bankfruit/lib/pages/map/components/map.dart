import 'package:bankfruit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlng/latlng.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        title: const Text('Visualing the Housing Market Risk'),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              minZoom: 1.0,
              maxZoom: 18,
              zoom: 3,
              //center: AppConstants.myLocation,
              //center: LatLng(35.68, 51.41);,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/jasong-isu/cl9afvdyn004714o6e0g4fe96/tiles/256/%7Bz%7D/%7Bx%7D/%7By%7D@2x?access_token=pk.eyJ1IjoiamFzb25nLWlzdSIsImEiOiJjazFvMjYyODAwaHUxM2RyeXNvcG1qNXlvIn0.9jmaNirbBevmEUI4OAvarQ",
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1IjoiamFzb25nLWlzdSIsImEiOiJjazFvMjYyODAwaHUxM2RyeXNvcG1qNXlvIn0.9jmaNirbBevmEUI4OAvarQ',
                  'id': 'mapbox.mapbox-streets-v8',
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
        ),
        onPressed: () {},
      ),
    );
  }
}
