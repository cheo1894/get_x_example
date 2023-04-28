import 'package:get/get.dart';
import 'package:get_x_example/controllers/globalController.dart';

class HomePageGet extends GetxController {
  var appBarTitile = 'Página inicial';
  final GlobalController globalController = Get.put(GlobalController());

  String globalText = '';

  int count = 0;

  suma() {
    count++;
    update();
  }

  resta() {
    count--;
    update();
  }

  irABooks() {
    Get.toNamed('bookPage');
  }

  globalInicializado() {
    Future.delayed(Duration(seconds: 2), () {
      globalText = globalController.globalText;
      update();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(Duration(milliseconds: 500), () {
      count = 5;
      update();
    });

    globalInicializado();

    super.onInit();
  }
}
