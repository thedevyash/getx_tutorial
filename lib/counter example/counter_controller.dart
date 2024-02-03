import 'package:get/get.dart';

class CounterController extends GetxController {
  //rx wle datatype mtlb reactive
  //obs mtlb ovserver
  RxInt counter = 1.obs;
  incrementCounter() {
    counter.value++;
    notifyChildrens();
  }
}
