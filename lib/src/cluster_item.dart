import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart'
    as maps_interface;

import '../google_maps_cluster_manager.dart';

abstract class ClusterItem {
  /// Getter for location
  maps_interface.LatLng get location;

  /// Setter for location.
  set location(maps_interface.LatLng newLocation);

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManager.precision);

  /// base getId.
  /// If you override it, it uses it's value
  String? getId() {
    return null;
  }
}
