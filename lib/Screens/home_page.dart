import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();

    return Scaffold(
      body: Obx(
        () => _controller.isLoading.value
            ? const CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AlbumID: ${_controller.photoList[0].albumId}'),
                    Text('ID: ${_controller.photoList[0].id}'),
                    Text('Title:   ${_controller.photoList[0].title}'),
                    // Image.network(_controller.photoList[0].thumbnailUrl),
                  ],
                ),
              ),
      ),
    );
  }
}
