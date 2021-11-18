import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  
  @override
  Widget build(BuildContext context) {
    
   return Scaffold
   (
     appBar: AppBar(title: Text('Domicilios SV'),),
     body: FlutterMap(
    options: MapOptions(
      center: LatLng(13.903185, -89.500022),
      zoom: 13.0,
      maxZoom: 18,
      minZoom: 9
    ),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        subdomains: ['a', 'b', 'c']
      ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 150.0,
            height: 150.0,
            point: LatLng(13.903185, -89.500022),
            builder: (ctx) => Container(
              child: IconButton
              (
                onPressed: ()
                {
                  
                }, 
                icon: Image.asset('assets/img/logo1.png'),
                
                iconSize: 150.0,

              ),
            ),
          ),
          Marker(
            width: 150.0,
            height: 150.0,
            point: LatLng(13.987998, -89.677064),
            builder: (ctx) => Container(
              child: IconButton
              (
                onPressed: ()
                {
                 
                }, 
                icon: Image.asset('assets/img/logo1.png'),
                iconSize: 150.0,

              ),
            ),
          ),
        ],
      ),
    ],
  )
   );
 } 
}