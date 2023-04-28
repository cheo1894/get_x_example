import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x_example/pages/homePage/homePageGet.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomePageGet homePageController = Get.put(HomePageGet());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageGet>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(homePageController.appBarTitile),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      homePageController.suma();
                    },
                    child: Icon(Icons.add)),
                SizedBox(
                  height: 10,
                ),
                Text(homePageController.count.toString()),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      homePageController.resta();
                    },
                    child: Icon(Icons.remove)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      homePageController.irABooks();
                    },
                    child: Text('Ir a Books')),
                SizedBox(
                  height: 10,
                ),
                Text(homePageController.globalText)
              ],
            ),
          ),
        );
      },
    );
  }
}
