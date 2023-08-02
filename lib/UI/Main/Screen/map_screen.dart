import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path_provider/path_provider.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  State<CurrentLocationScreen> createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  late GoogleMapController googleMapController;
  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14,
  );
  Set<Marker> markers = {};
  late Position currentLocation;
  Position shopLocation = Position(
    latitude: 21.0537433,
    longitude: 105.7350817,
    timestamp: DateTime.now(),
    accuracy: 10.0,
    altitude: 0.0,
    heading: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vị trí hiện tại của người dùng"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: initialCameraPosition,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            markers: markers,
            zoomControlsEnabled: false,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) async {
              googleMapController = controller;
              // currentLocation = await _determinePosition();

              googleMapController
                  .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(currentLocation!.latitude, currentLocation!.longitude), zoom: 14)));

              markers.clear();

              markers.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(currentLocation!.latitude, currentLocation!.longitude)));

              setState(() {});
            },
          ),
          _buildSlidingUpPanel(context),
        ],
      ),


    );
  }





  Future<double> _calculateDistance(Position from, Position to) async {
    double distanceInMeters = Geolocator.distanceBetween(
      from.latitude,
      from.longitude,
      to.latitude,
      to.longitude,
    );
    return distanceInMeters;
  }
  Widget _buildSlidingUpPanel(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 6.0,
          margin: const EdgeInsets.only(
            top: 12.0,
            bottom: 8.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey, // Thay AppColor.lightGray bằng Colors.grey
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
       Row(
          children: [
            const SizedBox(width: 16.0),
            Text(
              _calculateDistance(currentLocation!,shopLocation).toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 8.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'sdfsdfdssaf',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    color: const Color(0xFF3C3C43).withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0 + (MediaQuery.of(context).padding.bottom > 0 ? 20.0 : 0),
        ),
      ],
    );
  }
}


