import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontent_alzheimermemories_flutter/blocs/blocs.dart';
import 'package:frontent_alzheimermemories_flutter/views/map_view.dart';
import 'package:frontent_alzheimermemories_flutter/widgets/widgets.dart';
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
    return Scaffold(
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          if (locationState.lastKnowLocation == null) {
            return const Center(
              child: Text('espere porfavor'),
            );
          }
          return BlocBuilder<MapBloc, MapState>(
            builder: (context, mapState) {
              Map<String, Polyline> polylines = Map.from(mapState.polylines);
              if (!mapState.showMyRoute) {
                polylines.removeWhere((key, value) => key == 'MyRoute');
              }
              return Stack(
                children: [
                  MappView(
                    initialLocation: locationState.lastKnowLocation!,
                    polylines: polylines.values.toSet(),
                  ),
                  const SearchBar(),
                  const ManualMarket(),
                ],
              );
            },
          );

          // return Center(
          //   child: Text(
          //       '${state.lastKnowLocation!.latitude},${state.lastKnowLocation!.longitude}'),
          // );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          BtnToggleUserRoute(),
          BtnCurrentLocation(),
          BtnFollowUser(),
        ],
      ),
    );
  }
}
