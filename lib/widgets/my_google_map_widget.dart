import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:running_app/model/my_position.dart';

class MyGoogleMapWidget extends StatefulWidget {
  const MyGoogleMapWidget({super.key});

  @override
  State<MyGoogleMapWidget> createState() => _MyGoogleMapWidgetState();
}

class _MyGoogleMapWidgetState extends State<MyGoogleMapWidget> {
  final Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
    MyPosition.startLocationStream(_locationStreamCallback);
  }

  @override
  void dispose() {
    MyPosition.disposeStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: const CameraPosition(
        target: LatLng(1.384699, 103.944722),
        zoom: 17.5,
      ),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
        _mapController = controller;
      },
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
    );
  }

  void _locationStreamCallback(Position position) async {
    LatLng newLatLng = LatLng(position.latitude, position.longitude);
    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: newLatLng, zoom: 17.5),
      ),
    );
  }
}
