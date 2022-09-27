import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;

import '../Models/album_model.dart';

class Controller extends GetxController {
  List photoList = [];

  var isLoading = true.obs;

  @override
  void onInit() {
    fetchAlbumData();
    super.onInit();
    // update();
  }

  Future<void> fetchAlbumData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/'));
    print(response.body);
    if (response.statusCode == 200) {
      // AlbumModel _albumModel = AlbumModel.fromJson(
      //   jsonDecode(response.body),
      // );

      // photoList.add(
      //   AlbumModel(
      //     title: _albumModel.title,
      //     url: _albumModel.url,
      //     thumbnailUrl: _albumModel.thumbnailUrl,
      //     id: _albumModel.id,
      //     albumId: _albumModel.albumId,
      //   ),
      // );
      photoList = jsonDecode(response.body);
      update();
      print(photoList);
      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}
