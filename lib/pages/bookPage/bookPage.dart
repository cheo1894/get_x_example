import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/pages/bookPage/booksController.dart';

class BookPage extends StatelessWidget {
  BookPage({Key? key}) : super(key: key);
  final BooksConstroller booksConstroller = Get.put(BooksConstroller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BooksConstroller>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(booksConstroller.title),
          ),
          body: Center(
            child: ElevatedButton(
                onPressed: () {
                  booksConstroller.irAMapas();
                },
                child: Text('Ir a mapas')),
          ),
        );
      },
    );
  }
}
