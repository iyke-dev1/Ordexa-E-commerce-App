import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager(),);
    Get.put(UserRepository(),);

  }

}