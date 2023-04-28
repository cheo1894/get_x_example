import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooksConstroller extends GetxController {
  String title = 'Libros';

  irAMapas() {
    Get.toNamed('mapPage');
  }
}
