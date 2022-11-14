part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isMapInitialized;
  final bool isFollowingUser;
  final bool showMyRoute;

  //Polylines "ruta transitada"
  final Map<String, Polyline> polylines;
  /*
    mi_ruta: {
      id: polylineID Google,
      points: [ [lat, lng], [asdadadad], [asdadsasd]],
      width: 2,
      color: Colors.black
    },
  

  */

  const MapState({
    this.isMapInitialized = false,
    this.isFollowingUser = true,
    this.showMyRoute = true,
    Map<String, Polyline>? polylines,
  }) : polylines = polylines ?? const {};

  MapState copyWith({
    bool? isMapInitialized,
    bool? isFollowingUser,
    bool? showMyRoute,
    Map<String, Polyline>? polylines,
  }) =>
      MapState(
        isMapInitialized: isMapInitialized ?? this.isMapInitialized,
        isFollowingUser: isFollowingUser ?? this.isFollowingUser,
        polylines: polylines ?? this.polylines,
        showMyRoute: showMyRoute ?? this.showMyRoute,
      );

  @override
  List<Object> get props =>
      [isMapInitialized, isFollowingUser, polylines, showMyRoute];
}
