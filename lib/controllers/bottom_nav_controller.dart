import 'package:get/get.dart';

class BottomNavController extends GetxController {
  final index = 0.obs;
  changeIndex(value) => index.value = value;
//  increment() => count.value++;
}
