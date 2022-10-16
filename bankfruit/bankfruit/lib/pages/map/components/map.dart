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
              zoom: 13,
              //center: AppConstants.myLocation,
              //center: LatLng(35.68, 51.41);,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/britneyy/cl9autl71005b14tmohqtwhwd/wmts?access_token=pk.eyJ1IjoiYnJpdG5leXkiLCJhIjoiY2w5YWNibWF5MzFieDNudGdkZGVpMnk2eCJ9.OvpUDbjB-5nOhvXOu8fjLw",
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1IjoiYnJpdG5leXkiLCJhIjoiY2w5YWNibWF5MzFieDNudGdkZGVpMnk2eCJ9.OvpUDbjB-5nOhvXOu8fjLw',
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
