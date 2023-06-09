import 'package:flutter/material.dart';
import 'package:move_bus/src/home/models/buslist_model.dart';

class HomeController extends ChangeNotifier {
  List<BusListResponse> busList = [
    BusListResponse(
        busName: 'KSRTC Swift Scania P-series',
        layout: 2,
        driverName: 'Shobith sharma'),
    BusListResponse(
        busName: 'KSRTC Swift Scania P-series',
        layout: 3,
        driverName: 'Sujith sharma'),
    BusListResponse(
        busName: 'KSRTC Swift Scania P-series',
        layout: 3,
        driverName: 'Mukesh sharma'),
    BusListResponse(
        busName: 'KSRTC Swift Scania P-series',
        layout: 2,
        driverName: 'Rohit Varma')
  ];
}
