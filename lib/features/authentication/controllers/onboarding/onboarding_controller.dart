import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../screens/login/login_screen.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();


  /// variables
  final PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current when page scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  /// jump to the specific dot selection page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update current user and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();

      if(kDebugMode){
        print('============= GET STORAGE Next Button =================');
        print(storage.read('IsFirstTime'));
      }

      storage.write('IsFirstTime', false);

      if(kDebugMode){
        print('============= GET STORAGE Next Button =================');
        print(storage.read('IsFirstTime'));
      }

      Get.offAll(()=> LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  /// update current index and jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}