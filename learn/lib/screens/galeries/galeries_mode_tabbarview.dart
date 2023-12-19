import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/galeries/images/gridview_photos.dart';
import 'package:learn_flutter/screens/galeries/videos/gridview_videos.dart';

class MyPhotos extends StatelessWidget {
  const MyPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Galeries'),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.image),
                child: Text("Photos"),
              ),
              Tab(
                icon: Icon(Icons.video_library), 
                child: Text("Videos")
              )
            ])),
        body: TabBarView(children: [
          Tab(child: Photos()),
          Tab(child: GridViewVideos()),
        ]),
      ),
    );
  }
}
