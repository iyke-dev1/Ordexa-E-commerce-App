import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Manage the network connectivity status and provide methods to check and handle connectivity changes
class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> results) {
          final result = results.isNotEmpty ? results.first : ConnectivityResult.none;
          _updateConnectionStatus(result);
        });
  }

  /// Update the connection status and show a relevant popup for no internet connection
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      MyLoaders.warningSnackBar(
        title: "No Internet",
        message: "Please check your internet connection",
      );
    }
  }

  /// Check the internet connection status
  Future<bool> isConnected() async {
    try {
      final results = await _connectivity.checkConnectivity();
      // In v6, checkConnectivity() also returns List<ConnectivityResult>
      final result = results.isNotEmpty ? results.first : ConnectivityResult.none;
      return result != ConnectivityResult.none;
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
