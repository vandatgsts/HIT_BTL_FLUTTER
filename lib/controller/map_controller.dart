import 'dart:async';
import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:html/html_escape.dart';

class MapController extends GetxController {
  late BuildContext context;

  late Position myLocation;
  RxBool isMapLoaded = false.obs;
  Completer<GoogleMapController> googleMapController =
      Completer<GoogleMapController>();
  RxBool haveWeatherData = false.obs;
  RxBool showWeatherTypeList = false.obs;
  RxBool isLoadingWeather = false.obs;

  RxSet<Marker> markerResult = RxSet();
  MarkerId markerId = const MarkerId('Marker_id_location_pick');
  BitmapDescriptor? _markerBitmapFrom;
  final CustomInfoWindowController customInfoWindowController =
      CustomInfoWindowController();
  LatLng? currentLatLng;
  int? currentDateTime;
  RxMap selectedData = RxMap();

  //RxList<Prediction> listPredictionSuggestSearch = RxList();
  TextEditingController textEditingControllerSearch = TextEditingController();
  RxString strSearch = "".obs;

  RxBool isSearch = false.obs;
  RxString currentAddress = "".obs;

  RxBool showClearButton = false.obs;

  RxDouble distance=0.0.obs;

  final Position shopLocation = Position(
    latitude: 21.0367,
    longitude: 105.7750,
    timestamp: DateTime.now(),
    accuracy: 0.0,
    altitude: 0.0,
    heading: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0,
    floor: 0,
  );
  @override
  void onReady() {
    // TODO: implement onReady
    distance.value=calculateDistance(myLocation);
    super.onReady();
  }
  @override
  void onInit() {
    // TODO: implement onInit

    myLocation=Get.arguments['myLocation'];
    onPressMap(LatLng(myLocation.latitude, myLocation.longitude));
    distance.value=calculateDistance(myLocation);
    super.onInit();

    getLocation();
  }
  onPressMap(LatLng latLng) async {
    if (isLoadingWeather.value) return;
        if (customInfoWindowController.addInfoWindow != null) {
      customInfoWindowController.addInfoWindow!(
        const SizedBox.shrink(),
        latLng,
      );
    }

    markerResult.clear();
    markerResult.add(
      Marker(
        markerId: markerId,
        position: latLng,
        icon: _markerBitmapFrom ?? BitmapDescriptor.defaultMarker,
      ),
    );
  }
  getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error("location service is not enabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      //do stuff here
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        //stuff
        return Future.error("location permissions denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error("location permissions permanently denied");
    }
    myLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    //position stream?
  }

  onPressSearch() {
    print('object');
  }
  onPressNext(){
    Get.toNamed(AppRouter.forgotPassWord);
  }

  // onChangedSearch(String text) {
  //   listPredictionSuggestSearch.value = [];
  //
  //   if (text.isEmpty) {
  //     return;
  //   }
  //
  //   if (textEditingControllerSearch.value.text.isEmpty) {
  //     showClearButton.value = false;
  //   } else {
  //     showClearButton.value = true;
  //   }
  //
  //   EasyDebounce.debounce(
  //     'debouncer-autocomplete-to',
  //     const Duration(milliseconds: 800),
  //         () async {
  //       PlacesAutocompleteResponse response =
  //       await GoogleMapsPlaces(apiKey: AppConstant.keyGoogleMap)
  //           .autocomplete(text);
  //       listPredictionSuggestSearch.value = response.predictions;
  //     },
  //   );
  // }
  // Future<List<Prediction>> searchLocation(BuildContext context, String text) async {
  //   if(text != null && text.isNotEmpty) {
  //     http.Response response = await getLocationData(text);
  //     var data = jsonDecode(response.body.toString());
  //     print("my status is "+data["status"]);
  //     if ( data['status']== 'OK') {
  //       _predictionList = [];
  //       data['predictions'].forEach((prediction)
  //       => _predictionList.add(Prediction.fromJson(prediction)));
  //     } else {
  //       // ApiChecker.checkApi(response);
  //     }
  //   }
  //   return _predictionList;
  // }
  onPressMyLocation() async {
    try {
      Position? myLocation = await Geolocator.getLastKnownPosition();
      if (myLocation != null) {
        final GoogleMapController gmc = await googleMapController.future;
        gmc.animateCamera(CameraUpdate.newLatLng(
            LatLng(myLocation.latitude, myLocation.longitude)));
      }
    } catch (e) {}
  }
  Future<Position> getCurrentPosition(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // showErrorDialog(context, StringConstants.errorLocation01.tr);
      return Future.error({'code': 1, 'message':'lõi'});
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // showErrorDialog(context, StringConstants.errorLocation02.tr);
        return Future.error({'code': 2, 'message': 'Loi'});
      }
    }

    if (permission == LocationPermission.deniedForever) {

      return Future.error({'code': 2, 'message': 'Loi'});
    }
    return await Geolocator.getCurrentPosition();
  }/// khoang cách tu vi tri hien tai den shop
  double calculateDistance(Position startLocation) {
    double distanceInMeters = Geolocator.distanceBetween(
      shopLocation.latitude,
      shopLocation.longitude,
      startLocation.latitude,
      startLocation.longitude,
    );

    // Đổi khoảng cách từ mét sang kilomet
    double distanceInKilometers = distanceInMeters / 1000;

    return double.parse(distanceInKilometers.toStringAsFixed(2));
  }}


