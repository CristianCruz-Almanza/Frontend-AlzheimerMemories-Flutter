import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontent_alzheimermemories_flutter/blocs/blocs.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late LocationBloc locationBloc;
  @override
  void initState() {
    super.initState();
    locationBloc = BlocProvider.of<LocationBloc>(context);
    // locationBloc.getCurrentPosition();
    locationBloc.startFollowingUser();
  }

  @override
  void dispose() {
    locationBloc.stopFollowingUser();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        if (state.lastKnowLocation == null) {
          return const Center(
            child: Text('espere porfavor'),
          );
        }
        final CameraPosition initialCameraPosition = CameraPosition(
          target: state.lastKnowLocation!,
          tilt: 59.440717697143555,
          zoom: 15,
        );
        // return Center(
        //   child: Text(
        //       '${state.lastKnowLocation!.latitude},${state.lastKnowLocation!.longitude}'),
        // );
        return GoogleMap(initialCameraPosition: initialCameraPosition);
      },
    ));
  }
}
