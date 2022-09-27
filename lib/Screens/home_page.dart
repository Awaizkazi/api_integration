import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();

    return Scaffold(
      body: GetBuilder<Controller>(
        builder: (_) => ListView.builder(
          itemCount: _controller.photoList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _controller.photoList[index]['id'].toString(),
                  ),
                  Text(
                    _controller.photoList[index]['albumId'].toString(),
                  ),
                  Text(
                    _controller.photoList[index]['url'],
                  ),
                  Text(
                    _controller.photoList[index]['title'],
                  ),
                ],
              ),
            );
          },
        ),
        // itemBuilder: (BuildContext context, index)),
      ),
    );
  }
}
