import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Grid in Depth'),
      ),
      body: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          padding: const EdgeInsets.only(left: 20, right: 20),
          crossAxisSpacing: 20,
          itemBuilder: (c, i) {
            return Container(
              color: i % 2 == 0 ? Colors.black : Colors.deepOrange,
              child: Center(
                child: Text(
                  i.toString(),
                  style: const TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            );
          },
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(1, 2);
          }),
    );
  }
}
