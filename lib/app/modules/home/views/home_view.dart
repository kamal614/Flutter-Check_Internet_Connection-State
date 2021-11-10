import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:internet_connection/app/modules/network/controllers/network_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  final NetworkController _networkController = Get.find<NetworkController>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(() => Text(_networkController.connectionState.value == 1
              ? "Connected to WiFi"
              : _networkController.connectionState.value == 2
                  ? "Connected to Mobile Internet"
                  : "No Internt Connection"))),
    );
  }
}
