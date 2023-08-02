import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreenController extends ChangeNotifier{
  late Position currentLocation;
  late GoogleMapController googleMapController;
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      throw Exception('Dịch vụ vị trí đã bị tắt');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        throw Exception("Từ chối cấp quyền truy cập vị trí");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Từ chối cấp quyền truy cập vị trí vĩnh viễn');
    }

    Position position = await Geolocator.getCurrentPosition();
    print(position);

    return position;
  }

}