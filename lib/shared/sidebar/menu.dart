import 'package:flutter/material.dart';
import 'package:frontent_alzheimermemories_flutter/screens/screens.dart';

import '../../screens/info_alzheimer_screen.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF151026);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            bottom: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueGrey),
              tabs: const [
                Tab(icon: Icon(Icons.info_outline_rounded)),
                Tab(icon: Icon(Icons.text_fields)),
                Tab(icon: Icon(Icons.games_rounded)),
                // Tab(icon: Icon(Icons.maps_home_work)),
              ],
            ),
            title: const Text('Alzheimer Memories'),
          ),
          body: const TabBarView(
            children: [
              InfoAlzheimerScreen(),
              GpsAccessScreen(),
              InfoAlzheimerScreen(),
              //InfoAlzheimerScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
