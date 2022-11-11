import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontent_alzheimermemories_flutter/blocs/blocs.dart';
import 'package:frontent_alzheimermemories_flutter/views/map_view.dart';

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
        return SingleChildScrollView(
          child: Stack(
            children: [
              MappView(initialLocation: state.lastKnowLocation!),
              Text('Hola mundo')
            ],
          ),
        );

        // return Center(
        //   child: Text(
        //       '${state.lastKnowLocation!.latitude},${state.lastKnowLocation!.longitude}'),
        // );
      },
    ));
  }
}
