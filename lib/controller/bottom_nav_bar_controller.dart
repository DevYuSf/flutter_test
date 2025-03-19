import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  var SelectedIndex = 0.obs;

  void OnTappedItem(int index) {
    SelectedIndex.value = index;
  }
}

class ToggleExpansionController extends GetxController {
  var isExpanded = false.obs;
  void toggleExpansion() {
    print(isExpanded.value);
    isExpanded.value = !isExpanded.value;
  }
}
